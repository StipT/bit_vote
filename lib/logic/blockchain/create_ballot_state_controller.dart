import 'package:bit_vote/domain/blockchain/blockchain_failures.dart';
import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/blockchain/dto/candidate.dart';
import 'package:bit_vote/domain/blockchain/dto/election_state.dart';
import 'package:bit_vote/domain/blockchain/i_web3_service.dart';
import 'package:bit_vote/logic/blockchain/create_ballot_events.dart';
import 'package:bit_vote/logic/blockchain/create_ballot_states.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateBallotStateController extends StateNotifier<CreateBallotStates> {
  CreateBallotStateController(this._web3Service)
      : super(CreateBallotStates.initial());

  final IWeb3Service _web3Service;

  Future mapEventsToStates(CreateBallotEvents events) async {
    return events.map(
        onEditTopicChanged: (value) async {
          state = state.copyWith(
            topic: Topic(topic: value.topic),
          );
        },
        onEditCandidateAdded: (value) async {
          List<Candidate> candidates = state.candidates;
          candidates.add(Candidate(name: ""));
          state = state.copyWith(candidates: candidates);
        },
        onRemoveCandidate: (value) async {
          state.candidates.removeAt(value.candidateId!.toInt());
          state = state.copyWith(candidates: state.candidates);
        },
        onEditCandidateName: (value) async {
          state.candidates[value.candidateId!.toInt()] =
              Candidate(name: value.candidateName!);
          state = state.copyWith();
          print(state.candidates.toString());
        },

        startElection: (value) async {},
        endElection: (value) async {},
        createBallotBox: (value) async {
          await _createBallotBox(_web3Service.createElection);
        },
        ballotBoxCreated: (value) async {
          print(
              "BallotBoxCreated at Controller ${value.ballotBoxId} ${value.sender} ${value.electionState}");
          print(
              "BallotBox Created  ${value.ballotBoxId} with topic ${value.topic}");
          state = state.copyWith(
            id: Id(
              id: value.ballotBoxId,
            ),
            topic: Topic(topic: value.topic),
            transactionFailureOrSuccess: none(),
          );
          await _addCandidate(({boxId, required name}) =>
              _web3Service.addCandidate(boxId: boxId, name: name));
          await _addVoter(({boxId}) => _web3Service.addVoter(boxId: boxId));
          await _startElection(({boxId, duration}) =>
              _web3Service.startElection(boxId: boxId, duration: duration));
        },
        ballotBoxStarted: (value) async {
          state = state.copyWith(
            electionState: ElectionState.CREATED,
            endTime: value.endTime.toString(),
            status: "DONE",
            transactionFailureOrSuccess: none(),
          );
        },
        ballotBoxEnded: (value) async {
          state = state.copyWith(
            electionState: ElectionState.CONCLUDED,
            transactionFailureOrSuccess: none(),
          );
        },
        vote: (value) async {
          await _vote(({boxId, candidateId}) => _web3Service.vote(
              boxId: state.id,
              candidateId: Id(id: BigInt.from(state.selectedCandidate))));
        });
  }

  Future _createBallotBox(
    Future<Either<BlockchainFailures, Unit>> Function({required Topic topic})
        forwardCall,
  ) async {
    Either<BlockchainFailures, Unit>? failureOrSuccess;

    state = state.copyWith(
      isSubmitting: true,
      status: "Creating ballot box...",
      transactionFailureOrSuccess: none(),
    );
    failureOrSuccess = await forwardCall(
      topic: state.topic,
    );
    state = state.copyWith(
      isSubmitting: true,
      showError: true,
    );
  }

  Future _addCandidate(
    Future<Either<BlockchainFailures, Unit>> Function(
            {required Id? boxId, required String name})
        forwardCall,
  ) async {
    Either<BlockchainFailures, Unit>? failureOrSuccess;

    state = state.copyWith(
      isSubmitting: true,
      status: "Adding candidates...",
      transactionFailureOrSuccess: none(),
    );
    for (final candidate in state.candidates) {
      failureOrSuccess = await forwardCall(
        boxId: state.id,
        name: candidate.name,
      );
    }

    state = state.copyWith(
      isSubmitting: true,
      showError: true,
    );
  }

  Future _addVoter(
    Future<Either<BlockchainFailures, Unit>> Function({required Id? boxId})
        forwardCall,
  ) async {
    Either<BlockchainFailures, Unit>? failureOrSuccess;

    state = state.copyWith(
      isSubmitting: true,
      transactionFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardCall(
      boxId: state.id,
    );

    state = state.copyWith(
      isSubmitting: true,
      showError: true,
      transactionFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Future _startElection(
    Future<Either<BlockchainFailures, Unit>> Function(
            {required Id? boxId, required int? duration})
        forwardCall,
  ) async {
    Either<BlockchainFailures, Unit>? failureOrSuccess;
    state = state.copyWith(
      isSubmitting: true,
      status: "Starting election...",
      transactionFailureOrSuccess: none(),
    );
    failureOrSuccess = await forwardCall(
      boxId: state.id,
      duration: 60,
    );
    state = state.copyWith(
      isSubmitting: false,
      showError: true,
      transactionFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Future _vote(
    Future<Either<BlockchainFailures, Unit>> Function(
            {required Id? boxId, required Id? candidateId})
        forwardCall,
  ) async {
    Either<BlockchainFailures, Unit>? failureOrSuccess;
    state = state.copyWith(
      isSubmitting: true,
      status: "Voting...",
      transactionFailureOrSuccess: none(),
    );
    failureOrSuccess = await forwardCall(
      boxId: state.id,
      candidateId: Id(id: BigInt.from(state.selectedCandidate)),
    );
    state = state.copyWith(
      isSubmitting: false,
      showError: true,
      transactionFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}

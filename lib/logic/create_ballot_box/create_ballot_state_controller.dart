import 'package:bit_vote/domain/blockchain/blockchain_failures.dart';
import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/blockchain/dto/candidate.dart';
import 'package:bit_vote/domain/blockchain/dto/election_state.dart';
import 'package:bit_vote/domain/blockchain/i_web3_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'create_ballot_events.dart';
import 'create_ballot_states.dart';

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
        onEditDuration: (value) async {
            state = state.copyWith(duration: value.duration!);
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
        createBallotBox: (value) async {
          await _createBallotBox(_web3Service.createElection);
        },
        ballotBoxCreated: (value) async {
          state = state.copyWith(
            id: Id(
              id: value.ballotBoxId,
            ),
            electionState: ElectionState.CREATED,
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
            electionState: ElectionState.ONGOING,
            duration: value.endTime!,
            status: "DONE",
            transactionFailureOrSuccess: none(),
          );
      },);
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
    );
  }

  Future _startElection(
    Future<Either<BlockchainFailures, Unit>> Function(
            {required Id? boxId, required BigInt? duration})
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
      duration: state.duration,
    );
    state = state.copyWith(
      isSubmitting: false,
      showError: true,
      transactionFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}

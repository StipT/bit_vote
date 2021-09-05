import 'package:bit_vote/domain/blockchain/blockchain_failures.dart';
import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/blockchain/i_web3_service.dart';
import 'package:bit_vote/logic/vote/ballot_box_dto.dart';
import 'package:bit_vote/logic/vote/vote_events.dart';
import 'package:bit_vote/logic/vote/vote_states.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VoteStateController extends StateNotifier<VoteStates> {
  VoteStateController(this._web3Service) : super(VoteStates.initial());

  final IWeb3Service _web3Service;

  Future mapEventsToStates(VoteEvents events) async {
    return events.map(
      onBallotIdChange: (value) async {
        state = state.copyWith(
          id: Id(id: value.id),
        );
      },
      showBallotBox: (value) async {
        _showBallotBox(({boxId}) => _web3Service.showBallotBox(boxId: boxId));
      },
      onCandidateSelected: (value) async {
        state = state.copyWith(
          selectedCandidate: value.candidateId!.toInt(),
        );
        print("Selecterxc candidate ${state.selectedCandidate.toString()}");
      },
      addVoter: (value) async {
        await _addVoter(({boxId}) => _web3Service.addVoter(boxId: boxId));
      },
      vote: (value) async {
        await _vote(({boxId, candidateId}) => _web3Service.vote(
            boxId: state.id,
            candidateId: Id(id: BigInt.from(state.selectedCandidate))));
      },
      addedAVoter: (value) async {
        print("You have added a voter voter: ${value.sender}");
      },
      votedSuccessfully: (value) async {
        print(
            "You have added a votedSuccessfully candidateId: ${value.candidateId}");
      },
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

  Future _showBallotBox(
    Future<Either<BlockchainFailures, BallotBoxDto>> Function(
            {required Id? boxId})
        forwardCall,
  ) async {
    state = state.copyWith(
      isSubmitting: true,
      status: "Searching ...",
      transactionFailureOrSuccess: none(),
    );
    Either<BlockchainFailures, BallotBoxDto>? failureOrSuccess =
        await forwardCall(
      boxId: state.id,
    );

    BallotBoxDto ballotBoxDto = failureOrSuccess.fold(
        (l) => throw BlockchainFailures.serverError(), (r) => r);

    state = state.copyWith(
      id: ballotBoxDto.id,
      topic: ballotBoxDto.topic,
      electionState: ballotBoxDto.electionState,
      endTime: ballotBoxDto.endTime.toString(),
      candidates:   ballotBoxDto.candidates,
      isSubmitting: false,
      showError: true,
      transactionFailureOrSuccess: none(),
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
}

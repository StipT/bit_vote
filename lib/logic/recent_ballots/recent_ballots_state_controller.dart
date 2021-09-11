import 'package:bit_vote/domain/blockchain/blockchain_failures.dart';
import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/blockchain/dto/candidate.dart';
import 'package:bit_vote/domain/blockchain/dto/election_state.dart';
import 'package:bit_vote/domain/blockchain/i_web3_service.dart';
import 'package:bit_vote/logic/recent_ballots/recent_ballots_events.dart';
import 'package:bit_vote/logic/recent_ballots/recent_ballots_states.dart';
import 'package:bit_vote/logic/vote/ballot_box_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentBallotsStateController extends StateNotifier<RecentBallotsStates> {
  RecentBallotsStateController(this._web3Service)
      : super(RecentBallotsStates.initial());

  final IWeb3Service _web3Service;


  Future mapEventsToStates(RecentBallotsEvents events) async {
    return events.map(
      showBallotBox: (value) async {
        _showBallotBox(({boxId}) => _web3Service.showBallotBox(boxId: boxId));
      },
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

    List<Candidate> candidates = List<Candidate>.empty();
    ballotBoxDto.candidates.map((e) => candidates.add(Candidate(name: e)));
    print('ELECTION STATE IS : ${ballotBoxDto.electionState}');

    state = state.copyWith(
      id: ballotBoxDto.id,
      topic: ballotBoxDto.topic,
      electionState: stateFromString(ballotBoxDto.electionState),
      endTime: ballotBoxDto.endTime.toString(),
      candidates: candidates,
      isSubmitting: false,
      showError: true,
      transactionFailureOrSuccess: none(),
    );
  }
}

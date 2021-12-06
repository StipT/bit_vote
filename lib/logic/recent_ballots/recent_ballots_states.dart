import 'package:bit_vote/domain/blockchain/blockchain_failures.dart';
import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/blockchain/dto/candidate.dart';
import 'package:bit_vote/domain/blockchain/dto/election_state.dart';
import 'package:bit_vote/domain/blockchain/dto/voter.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_ballots_states.freezed.dart';

@freezed
class RecentBallotsStates with _$RecentBallotsStates {
  const factory RecentBallotsStates({
    required Id id,
    required Address adminAddress,
    required Topic topic,
    required List<Candidate> candidates,
    required List<Voter> voters,
    required ElectionState electionState,
    required String endTime,
    required bool isSubmitting,
    required bool showError,
    required String status,
    required int selectedCandidate,
    required Option<Either<BlockchainFailures, Unit>>
        transactionFailureOrSuccess,
  }) = _RecentBallotStates;

  factory RecentBallotsStates.initial() => RecentBallotsStates(
        id: Id(id: BigInt.zero),
        adminAddress: Address(address: ''),
        topic: Topic(topic: ''),
        candidates: List<Candidate>.of([]),
        voters: List<Voter>.of([]),
        electionState: ElectionState.NOT_CREATED,
        endTime: "",
        status: "",
        selectedCandidate: 0,
        isSubmitting: false,
        showError: false,
        transactionFailureOrSuccess: none(),
      );
}

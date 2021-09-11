import 'package:bit_vote/domain/blockchain/blockchain_failures.dart';
import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/blockchain/dto/candidate.dart';
import 'package:bit_vote/domain/blockchain/dto/election_state.dart';
import 'package:bit_vote/domain/blockchain/dto/voter.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ballot_states.freezed.dart';

@freezed
class CreateBallotStates with _$CreateBallotStates {
  const factory CreateBallotStates({
    required Id id,
    required Address adminAddress,
    required Topic topic,
    required List<Candidate> candidates,
    required List<Voter> voters,
    required ElectionState electionState,
    required BigInt duration,
    required bool isSubmitting,
    required bool showError,
    required String status,
    required int selectedCandidate,
    required Option<Either<BlockchainFailures, Unit>>
        transactionFailureOrSuccess,
  }) = _CreateBallotStates;

  factory CreateBallotStates.initial() => CreateBallotStates(
        id: Id(id: BigInt.zero),
        adminAddress: Address(address: ''),
        topic: Topic(topic: ''),
        candidates: List<Candidate>.of([]),
        voters: List<Voter>.of([]),
        electionState: ElectionState.NOT_CREATED,
        duration: BigInt.zero,
        status: "",
        selectedCandidate: 0,
        isSubmitting: false,
        showError: false,
        transactionFailureOrSuccess: none(),
      );
}

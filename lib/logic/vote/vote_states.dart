import 'package:bit_vote/domain/blockchain/blockchain_failures.dart';
import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/blockchain/dto/candidate.dart';
import 'package:bit_vote/domain/blockchain/dto/election_state.dart';
import 'package:bit_vote/domain/blockchain/dto/voter.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_states.freezed.dart';

@freezed
class VoteStates with _$VoteStates {
  const factory VoteStates({
    required Id id,
    required Address adminAddress,
    required Topic topic,
    required List<String> candidates,
    required List<Voter> voters,
    required String electionState,
    required String endTime,
    required bool isSubmitting,
    required bool showError,
    required String status,
    required int selectedCandidate,
    required Option<Either<BlockchainFailures, Unit>>
        transactionFailureOrSuccess,
  }) = _VoteStates;

  factory VoteStates.initial() => VoteStates(
        id: Id(id: BigInt.zero),
        adminAddress: Address(address: ''),
        topic: Topic(topic: ''),
        candidates: List<String>.of([]),
        voters: List<Voter>.of([]),
        electionState: "NOT_CREATED",
        endTime: "",
        status: "",
        selectedCandidate: 0,
        isSubmitting: false,
        showError: false,
        transactionFailureOrSuccess: none(),
      );
}

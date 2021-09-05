import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/blockchain/dto/candidate.dart';
import 'package:bit_vote/domain/blockchain/dto/election_state.dart';
import 'package:bit_vote/domain/blockchain/dto/voter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ballot_box.freezed.dart';

@freezed
abstract class BallotBox implements _$BallotBox {
  const BallotBox._();

  const factory BallotBox({
    required Id id,
    required Address adminAddress,
    required Topic topic,
    required List<Candidate> candidates,
    required List<Voter> voters,
    required ElectionState electionState,
    required String endTime,
  }) = _BallotBox;

  factory BallotBox.empty() => BallotBox(
        id: Id(id: BigInt.zero),
        adminAddress: Address(address: ''),
        topic: Topic(topic: ''),
        candidates: List<Candidate>.of([]),
        voters: List<Voter>.of([]),
        electionState: ElectionState.NOT_CREATED,
        endTime: "",
      );
}

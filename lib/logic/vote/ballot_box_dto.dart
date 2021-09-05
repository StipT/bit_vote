import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ballot_box_dto.freezed.dart';

@freezed
class BallotBoxDto with _$BallotBoxDto {
  const factory BallotBoxDto({
    required Id id,
    required Address adminAddress,
    required Topic topic,
    required String electionState,
    required BigInt endTime,
    required List<String> candidates,
    required List<BigInt> votes,
  }) = _BallotBoxDto;

  factory BallotBoxDto.initial() => BallotBoxDto(
      id: Id(id: BigInt.zero),
      adminAddress: Address(address: ''),
      topic: Topic(topic: ''),
      electionState: "NOT_CREATED",
      endTime: BigInt.zero,
      candidates: List<String>.empty(),
      votes: List<BigInt>.empty());
}

import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voter.freezed.dart';

@freezed
abstract class Voter implements _$Voter {
  const Voter._();

  const factory Voter({
    required Address address,
    required Id votedTowards,
  }) = _Voter;

  factory Voter.empty() => Voter(
    address: Address(address: ""),
    votedTowards: Id(id: BigInt.zero)
  );
}



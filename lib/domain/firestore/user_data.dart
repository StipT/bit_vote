import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/firestore/firestore_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required PrivateKey privateKey,
    required Address address,
  }) = _UserData;

  factory UserData.initial() => UserData(
        privateKey: PrivateKey(
            privateKey: "0000000000000000000000000000000000000000000000000000000000000000"),
        address: Address(address: "0x0000000000000000000000000000000000000000"),
      );
}

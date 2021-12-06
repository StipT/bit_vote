import "package:freezed_annotation/freezed_annotation.dart";

part "value_failures.freezed.dart";

@freezed
class ValueFailures<T> with _$ValueFailures<T> {
  const factory ValueFailures.invalidEmail({required String? failedValue}) =
      InvalidEmail<T>;

  const factory ValueFailures.shortPassword({required String? failedValue}) =
      ShortPassword<T>;

  const factory ValueFailures.longString({required String? failedValue}) =
      LongString<T>;

  const factory ValueFailures.longList({required List<dynamic>? failedValue}) =
  LongList<T>;

  const factory ValueFailures.noSpecialSymbol({required String? failedValue}) =
      NoSpecialSymbol<T>;

  const factory ValueFailures.noUpperCase({required String? failedValue}) =
      NoUpperCase<T>;

  const factory ValueFailures.noNumber({required String? failedValue}) =
      NoNumber<T>;

  const factory ValueFailures.negativeId({required BigInt? failedValue}) =
      NegativeId<T>;

  const factory ValueFailures.invalidPrivateKey({required String? failedValue}) =
  InvalidPrivateKey<T>;

  const factory ValueFailures.invalidEthAddress(
      {required String? failedValue}) = InvalidAddress<T>;
}

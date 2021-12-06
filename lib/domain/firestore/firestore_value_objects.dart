import 'package:bit_vote/domain/core/value_failures.dart';
import 'package:bit_vote/domain/core/value_object.dart';
import 'package:bit_vote/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class PrivateKey extends ValueObject<String> {
  factory PrivateKey({String? privateKey}) {
    return PrivateKey._(validatePrivateKey(privateKey: privateKey));
  }

  const PrivateKey._(this.valueObject);

  @override
  final Either<ValueFailures<String>, String>? valueObject;
}

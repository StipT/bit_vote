import 'package:bit_vote/domain/core/value_failures.dart';
import 'package:bit_vote/domain/core/value_object.dart';
import 'package:bit_vote/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class Id extends ValueObject<BigInt> {
  factory Id({BigInt? id}) {
    return Id._(validateId(id: id));
  }

  const Id._(this.valueObject);

  @override
  final Either<ValueFailures<BigInt>, BigInt>? valueObject;
}

class Address extends ValueObject<String> {
  factory Address({String? address}) {
    return Address._(validateEthAddress(address: address));
  }

  const Address._(this.valueObject);

  @override
  final Either<ValueFailures<String>, String>? valueObject;
}

class Topic extends ValueObject<String> {
  factory Topic({String? topic}) {
    return Topic._(validateStringLength(string: topic, maxLength: 500));
  }

  const Topic._(this.valueObject);

  @override
  final Either<ValueFailures<String>, String>? valueObject;
}

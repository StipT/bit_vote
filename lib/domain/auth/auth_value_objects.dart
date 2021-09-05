import 'package:bit_vote/domain/core/value_failures.dart';
import 'package:bit_vote/domain/core/value_object.dart';
import 'package:bit_vote/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress({String? email}) {
    return EmailAddress._(validateEmailAddress(email: email));
  }

  const EmailAddress._(this.valueObject);

  @override
  final Either<ValueFailures<String>, String>? valueObject;
}

class Password extends ValueObject<String> {
  factory Password({String? password}) {
    return Password._(validatePassword(password: password));
  }

  const Password._(this.valueObject);

  @override
  final Either<ValueFailures<String>, String>? valueObject;
}

import 'package:bit_vote/domain/blockchain/dto/candidate.dart';
import 'package:dartz/dartz.dart';

import 'value_failures.dart';

Either<ValueFailures<String>, String> validateEmailAddress({
  required String? email,
}) {
  final emailRegex = RegExp(
      r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&"*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

  if (emailRegex.hasMatch(email!)) {
    return right(email);
  } else {
    return left(
      ValueFailures.invalidEmail(failedValue: email),
    );
  }
}

Either<ValueFailures<String>, String> validateEthAddress({
  required String? address,
}) {
  final isEthereumAddress = address!.contains(RegExp(r"^0x[a-fA-F0-9]{40}$"));

  if (!isEthereumAddress) {
    return left(
      ValueFailures.invalidEthAddress(failedValue: address),
    );
  } else {
    return right(address);
  }
}

Either<ValueFailures<String>, String> validatePrivateKey({
  required String? privateKey,
}) {
  final privateKeyRegex = RegExp(
      r'[a-fA-F0-9]{64}$');

  if (privateKeyRegex.hasMatch(privateKey!)) {
    return right(privateKey);
  } else {
    return left(
      ValueFailures.invalidPrivateKey(failedValue: privateKey),
    );
  }
}

Either<ValueFailures<String>, String> validateStringLength({
  required String? string,
  required int? maxLength,
}) {
  final hasMaxLength = string!.length < maxLength!;
  if (!hasMaxLength) {
    return left(
      ValueFailures.longString(failedValue: string),
    );
  } else {
    return right(string);
  }
}

Either<ValueFailures<List<Candidate>>, List<Candidate>> validateMaxListLength({
  required List<Candidate>? list,
  required int? maxLength,
}) {
  final hasMaxLength = list!.length < maxLength!;
  if (!hasMaxLength) {
    return left(
      ValueFailures.longList(failedValue: list),
    );
  } else {
    return right(list);
  }
}

Either<ValueFailures<String>, String> validatePassword({
  required String? password,
}) {
  final hasMinLength = password!.length > 6;
  final hasUppercase = password.contains(RegExp('[A-Z]'));
  final hasDigits = password.contains(RegExp('[0-9]'));
  final hasSpecialCharacters =
      password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  if (!hasMinLength) {
    return left(
      ValueFailures.shortPassword(failedValue: password),
    );
  } else if (!hasUppercase) {
    return left(
      ValueFailures.noUpperCase(failedValue: password),
    );
  } else if (!hasDigits) {
    return left(
      ValueFailures.noNumber(failedValue: password),
    );
  } else if (!hasSpecialCharacters) {
    return left(
      ValueFailures.noSpecialSymbol(failedValue: password),
    );
  } else {
    return right(password);
  }
}

Either<ValueFailures<BigInt>, BigInt> validateId({
  required BigInt? id,
}) {
  if (id!.isNegative) {
    return left(
      ValueFailures.negativeId(failedValue: id),
    );
  } else {
    return right(id);
  }
}

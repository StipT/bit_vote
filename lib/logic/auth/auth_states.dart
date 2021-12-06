import 'package:bit_vote/domain/auth/auth_failures.dart';
import 'package:bit_vote/domain/auth/auth_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_states.freezed.dart';

@freezed
class AuthStates with _$AuthStates {
  const factory AuthStates({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool showError,
    required Option<Either<AuthFailures, Unit>> authFailureOrSuccess,
  }) = _AuthStates;

  factory AuthStates.initial() => AuthStates(
      emailAddress: EmailAddress(email: ""),
      password: Password(password: ""),
      showError: false,
      isSubmitting: false,
      authFailureOrSuccess: none(),);
}

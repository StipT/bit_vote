import 'package:bit_vote/domain/auth/auth_failures.dart';
import 'package:bit_vote/domain/firestore/firestore_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "menu_states.freezed.dart";

@freezed
class MenuStates with _$MenuStates {
  const factory MenuStates({
    required bool isSubmitting,
    required bool showError,
    required Option<Either<FirestoreFailures, Unit>> initFailureOrSuccess,
    required Option<Either<AuthFailures, Unit>> logoutFailureOrSuccess,
  }) = _MenuStates;

  factory MenuStates.initial() => MenuStates(
    isSubmitting: false,
    showError: false,
    initFailureOrSuccess: none(),
    logoutFailureOrSuccess: none(),
  );
}
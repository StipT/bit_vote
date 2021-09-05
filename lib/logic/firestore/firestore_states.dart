import 'package:bit_vote/domain/firestore/firestore_failures.dart';
import 'package:bit_vote/domain/firestore/user_data.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_states.freezed.dart';

@freezed
class FirestoreStates with _$FirestoreStates {
  const factory FirestoreStates({
    required UserData userData,
    required bool isSubmitting,
    required List<String> ballots,
    required bool showError,
    required Option<Either<FirestoreFailures, UserData>>requestFailureOrSuccess,
    required Option<Either<FirestoreFailures, Unit>>storeBallotFailureOrSuccess,
    required Option<Either<FirestoreFailures, List<String>>>readBallotsFailureOrSuccess,
  }) = _FirestoreStates;

  factory FirestoreStates.initial() => FirestoreStates(
        userData: UserData.initial(),
        ballots: List<String>.empty(),
        isSubmitting: false,
        showError: false,
        requestFailureOrSuccess: none(),
        storeBallotFailureOrSuccess: none(),
        readBallotsFailureOrSuccess: none(),
      );
}

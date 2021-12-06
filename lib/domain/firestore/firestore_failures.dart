import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_failures.freezed.dart';

@freezed
class FirestoreFailures with _$FirestoreFailures {
  const factory FirestoreFailures.serverError() = ServerError;

  const factory FirestoreFailures.unauthorized() = EmailAlreadyInUse;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_events.freezed.dart';

@freezed
class FirestoreEvents with _$FirestoreEvents {
  const factory FirestoreEvents.readUserData() = ReadUserData;

  const factory FirestoreEvents.storeUserData() = StoreUserData;

  const factory FirestoreEvents.readBallots() = ReadBallots;

  const factory FirestoreEvents.storeBallots() = StoreBallots;
}

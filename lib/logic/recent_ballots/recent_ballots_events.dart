import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_ballots_events.freezed.dart';

@freezed
class RecentBallotsEvents with _$RecentBallotsEvents {
  const factory RecentBallotsEvents.showBallotBox() = ShowBallotBox;
}

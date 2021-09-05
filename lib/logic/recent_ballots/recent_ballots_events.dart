import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_ballots_events.freezed.dart';

@freezed
class RecentBallotsEvents with _$RecentBallotsEvents {
  const factory RecentBallotsEvents.onEditTopicChanged({
    required String? topic,
  }) = OnEditTopicChanged;

  const factory RecentBallotsEvents.onEditCandidateName({
    required BigInt? candidateId,
    required String? candidateName,
  }) = OnEditCandidateName;

  const factory RecentBallotsEvents.onEditCandidateAdded() = OnEditCandidateAdded;

  const factory RecentBallotsEvents.onRemoveCandidate({
    required BigInt? candidateId,
  }) = OnRemoveCandidate;


  const factory RecentBallotsEvents.vote() = Vote;
}

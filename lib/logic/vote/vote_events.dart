import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_events.freezed.dart';

@freezed
class VoteEvents with _$VoteEvents {

  const factory VoteEvents.onBallotIdChange({
    required BigInt? id,
  }) = OnBallotIdChange;

  const factory VoteEvents.showBallotBox() = ShowBallotBox;

  const factory VoteEvents.vote() = Vote;

  const factory VoteEvents.addVoter() = AddVoter;

  const factory VoteEvents.onCandidateSelected({
    required BigInt? candidateId,
  }) = OnCandidateSelected;
}

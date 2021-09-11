import 'package:freezed_annotation/freezed_annotation.dart';

part "create_ballot_events.freezed.dart";

@freezed
class CreateBallotEvents with _$CreateBallotEvents {
  const factory CreateBallotEvents.onEditTopicChanged({
    required String? topic,
  }) = OnEditTopicChanged;

  const factory CreateBallotEvents.onEditCandidateName({
    required BigInt? candidateId,
    required String? candidateName,
  }) = OnEditCandidateName;

  const factory CreateBallotEvents.onEditCandidateAdded() = OnEditCandidateAdded;

  const factory CreateBallotEvents.onRemoveCandidate({
    required BigInt? candidateId,
  }) = OnRemoveCandidate;

  const factory CreateBallotEvents.ballotBoxCreated({
    required String? sender,
    required BigInt? ballotBoxId,
    required String? topic,
    required String? electionState,
  }) = BallotBoxCreated;

  const factory CreateBallotEvents.ballotBoxStarted({
    required String? sender,
    required BigInt? ballotBoxId,
    required BigInt? electionState,
    required BigInt? endTime,
  }) = BallotBoxStarted;

  const factory CreateBallotEvents.ballotBoxEnded({
    required String? sender,
    required BigInt? ballotBoxId,
    required String? electionState,
  }) = BallotBoxEnded;

  const factory CreateBallotEvents.createBallotBox() = CreateBallotBox;

  const factory CreateBallotEvents.startElection() = StartElection;

  const factory CreateBallotEvents.endElection() = EndElection;

  const factory CreateBallotEvents.vote() = Vote;
}

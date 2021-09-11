// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_ballot_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateBallotEventsTearOff {
  const _$CreateBallotEventsTearOff();

  OnEditTopicChanged onEditTopicChanged({required String? topic}) {
    return OnEditTopicChanged(
      topic: topic,
    );
  }

  OnEditCandidateName onEditCandidateName(
      {required BigInt? candidateId, required String? candidateName}) {
    return OnEditCandidateName(
      candidateId: candidateId,
      candidateName: candidateName,
    );
  }

  OnEditCandidateAdded onEditCandidateAdded() {
    return const OnEditCandidateAdded();
  }

  OnRemoveCandidate onRemoveCandidate({required BigInt? candidateId}) {
    return OnRemoveCandidate(
      candidateId: candidateId,
    );
  }

  BallotBoxCreated ballotBoxCreated(
      {required String? sender,
      required BigInt? ballotBoxId,
      required String? topic,
      required String? electionState}) {
    return BallotBoxCreated(
      sender: sender,
      ballotBoxId: ballotBoxId,
      topic: topic,
      electionState: electionState,
    );
  }

  BallotBoxStarted ballotBoxStarted(
      {required String? sender,
      required BigInt? ballotBoxId,
      required BigInt? electionState,
      required BigInt? endTime}) {
    return BallotBoxStarted(
      sender: sender,
      ballotBoxId: ballotBoxId,
      electionState: electionState,
      endTime: endTime,
    );
  }

  BallotBoxEnded ballotBoxEnded(
      {required String? sender,
      required BigInt? ballotBoxId,
      required String? electionState}) {
    return BallotBoxEnded(
      sender: sender,
      ballotBoxId: ballotBoxId,
      electionState: electionState,
    );
  }

  CreateBallotBox createBallotBox() {
    return const CreateBallotBox();
  }

  StartElection startElection() {
    return const StartElection();
  }

  EndElection endElection() {
    return const EndElection();
  }

  Vote vote() {
    return const Vote();
  }
}

/// @nodoc
const $CreateBallotEvents = _$CreateBallotEventsTearOff();

/// @nodoc
mixin _$CreateBallotEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBallotEventsCopyWith<$Res> {
  factory $CreateBallotEventsCopyWith(
          CreateBallotEvents value, $Res Function(CreateBallotEvents) then) =
      _$CreateBallotEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateBallotEventsCopyWithImpl<$Res>
    implements $CreateBallotEventsCopyWith<$Res> {
  _$CreateBallotEventsCopyWithImpl(this._value, this._then);

  final CreateBallotEvents _value;
  // ignore: unused_field
  final $Res Function(CreateBallotEvents) _then;
}

/// @nodoc
abstract class $OnEditTopicChangedCopyWith<$Res> {
  factory $OnEditTopicChangedCopyWith(
          OnEditTopicChanged value, $Res Function(OnEditTopicChanged) then) =
      _$OnEditTopicChangedCopyWithImpl<$Res>;
  $Res call({String? topic});
}

/// @nodoc
class _$OnEditTopicChangedCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $OnEditTopicChangedCopyWith<$Res> {
  _$OnEditTopicChangedCopyWithImpl(
      OnEditTopicChanged _value, $Res Function(OnEditTopicChanged) _then)
      : super(_value, (v) => _then(v as OnEditTopicChanged));

  @override
  OnEditTopicChanged get _value => super._value as OnEditTopicChanged;

  @override
  $Res call({
    Object? topic = freezed,
  }) {
    return _then(OnEditTopicChanged(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnEditTopicChanged implements OnEditTopicChanged {
  const _$OnEditTopicChanged({required this.topic});

  @override
  final String? topic;

  @override
  String toString() {
    return 'CreateBallotEvents.onEditTopicChanged(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnEditTopicChanged &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(topic);

  @JsonKey(ignore: true)
  @override
  $OnEditTopicChangedCopyWith<OnEditTopicChanged> get copyWith =>
      _$OnEditTopicChangedCopyWithImpl<OnEditTopicChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return onEditTopicChanged(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (onEditTopicChanged != null) {
      return onEditTopicChanged(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return onEditTopicChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (onEditTopicChanged != null) {
      return onEditTopicChanged(this);
    }
    return orElse();
  }
}

abstract class OnEditTopicChanged implements CreateBallotEvents {
  const factory OnEditTopicChanged({required String? topic}) =
      _$OnEditTopicChanged;

  String? get topic => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnEditTopicChangedCopyWith<OnEditTopicChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnEditCandidateNameCopyWith<$Res> {
  factory $OnEditCandidateNameCopyWith(
          OnEditCandidateName value, $Res Function(OnEditCandidateName) then) =
      _$OnEditCandidateNameCopyWithImpl<$Res>;
  $Res call({BigInt? candidateId, String? candidateName});
}

/// @nodoc
class _$OnEditCandidateNameCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $OnEditCandidateNameCopyWith<$Res> {
  _$OnEditCandidateNameCopyWithImpl(
      OnEditCandidateName _value, $Res Function(OnEditCandidateName) _then)
      : super(_value, (v) => _then(v as OnEditCandidateName));

  @override
  OnEditCandidateName get _value => super._value as OnEditCandidateName;

  @override
  $Res call({
    Object? candidateId = freezed,
    Object? candidateName = freezed,
  }) {
    return _then(OnEditCandidateName(
      candidateId: candidateId == freezed
          ? _value.candidateId
          : candidateId // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      candidateName: candidateName == freezed
          ? _value.candidateName
          : candidateName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnEditCandidateName implements OnEditCandidateName {
  const _$OnEditCandidateName(
      {required this.candidateId, required this.candidateName});

  @override
  final BigInt? candidateId;
  @override
  final String? candidateName;

  @override
  String toString() {
    return 'CreateBallotEvents.onEditCandidateName(candidateId: $candidateId, candidateName: $candidateName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnEditCandidateName &&
            (identical(other.candidateId, candidateId) ||
                const DeepCollectionEquality()
                    .equals(other.candidateId, candidateId)) &&
            (identical(other.candidateName, candidateName) ||
                const DeepCollectionEquality()
                    .equals(other.candidateName, candidateName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(candidateId) ^
      const DeepCollectionEquality().hash(candidateName);

  @JsonKey(ignore: true)
  @override
  $OnEditCandidateNameCopyWith<OnEditCandidateName> get copyWith =>
      _$OnEditCandidateNameCopyWithImpl<OnEditCandidateName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return onEditCandidateName(candidateId, candidateName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (onEditCandidateName != null) {
      return onEditCandidateName(candidateId, candidateName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return onEditCandidateName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (onEditCandidateName != null) {
      return onEditCandidateName(this);
    }
    return orElse();
  }
}

abstract class OnEditCandidateName implements CreateBallotEvents {
  const factory OnEditCandidateName(
      {required BigInt? candidateId,
      required String? candidateName}) = _$OnEditCandidateName;

  BigInt? get candidateId => throw _privateConstructorUsedError;
  String? get candidateName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnEditCandidateNameCopyWith<OnEditCandidateName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnEditCandidateAddedCopyWith<$Res> {
  factory $OnEditCandidateAddedCopyWith(OnEditCandidateAdded value,
          $Res Function(OnEditCandidateAdded) then) =
      _$OnEditCandidateAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnEditCandidateAddedCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $OnEditCandidateAddedCopyWith<$Res> {
  _$OnEditCandidateAddedCopyWithImpl(
      OnEditCandidateAdded _value, $Res Function(OnEditCandidateAdded) _then)
      : super(_value, (v) => _then(v as OnEditCandidateAdded));

  @override
  OnEditCandidateAdded get _value => super._value as OnEditCandidateAdded;
}

/// @nodoc

class _$OnEditCandidateAdded implements OnEditCandidateAdded {
  const _$OnEditCandidateAdded();

  @override
  String toString() {
    return 'CreateBallotEvents.onEditCandidateAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnEditCandidateAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return onEditCandidateAdded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (onEditCandidateAdded != null) {
      return onEditCandidateAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return onEditCandidateAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (onEditCandidateAdded != null) {
      return onEditCandidateAdded(this);
    }
    return orElse();
  }
}

abstract class OnEditCandidateAdded implements CreateBallotEvents {
  const factory OnEditCandidateAdded() = _$OnEditCandidateAdded;
}

/// @nodoc
abstract class $OnRemoveCandidateCopyWith<$Res> {
  factory $OnRemoveCandidateCopyWith(
          OnRemoveCandidate value, $Res Function(OnRemoveCandidate) then) =
      _$OnRemoveCandidateCopyWithImpl<$Res>;
  $Res call({BigInt? candidateId});
}

/// @nodoc
class _$OnRemoveCandidateCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $OnRemoveCandidateCopyWith<$Res> {
  _$OnRemoveCandidateCopyWithImpl(
      OnRemoveCandidate _value, $Res Function(OnRemoveCandidate) _then)
      : super(_value, (v) => _then(v as OnRemoveCandidate));

  @override
  OnRemoveCandidate get _value => super._value as OnRemoveCandidate;

  @override
  $Res call({
    Object? candidateId = freezed,
  }) {
    return _then(OnRemoveCandidate(
      candidateId: candidateId == freezed
          ? _value.candidateId
          : candidateId // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc

class _$OnRemoveCandidate implements OnRemoveCandidate {
  const _$OnRemoveCandidate({required this.candidateId});

  @override
  final BigInt? candidateId;

  @override
  String toString() {
    return 'CreateBallotEvents.onRemoveCandidate(candidateId: $candidateId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnRemoveCandidate &&
            (identical(other.candidateId, candidateId) ||
                const DeepCollectionEquality()
                    .equals(other.candidateId, candidateId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(candidateId);

  @JsonKey(ignore: true)
  @override
  $OnRemoveCandidateCopyWith<OnRemoveCandidate> get copyWith =>
      _$OnRemoveCandidateCopyWithImpl<OnRemoveCandidate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return onRemoveCandidate(candidateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (onRemoveCandidate != null) {
      return onRemoveCandidate(candidateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return onRemoveCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (onRemoveCandidate != null) {
      return onRemoveCandidate(this);
    }
    return orElse();
  }
}

abstract class OnRemoveCandidate implements CreateBallotEvents {
  const factory OnRemoveCandidate({required BigInt? candidateId}) =
      _$OnRemoveCandidate;

  BigInt? get candidateId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnRemoveCandidateCopyWith<OnRemoveCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BallotBoxCreatedCopyWith<$Res> {
  factory $BallotBoxCreatedCopyWith(
          BallotBoxCreated value, $Res Function(BallotBoxCreated) then) =
      _$BallotBoxCreatedCopyWithImpl<$Res>;
  $Res call(
      {String? sender,
      BigInt? ballotBoxId,
      String? topic,
      String? electionState});
}

/// @nodoc
class _$BallotBoxCreatedCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $BallotBoxCreatedCopyWith<$Res> {
  _$BallotBoxCreatedCopyWithImpl(
      BallotBoxCreated _value, $Res Function(BallotBoxCreated) _then)
      : super(_value, (v) => _then(v as BallotBoxCreated));

  @override
  BallotBoxCreated get _value => super._value as BallotBoxCreated;

  @override
  $Res call({
    Object? sender = freezed,
    Object? ballotBoxId = freezed,
    Object? topic = freezed,
    Object? electionState = freezed,
  }) {
    return _then(BallotBoxCreated(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      ballotBoxId: ballotBoxId == freezed
          ? _value.ballotBoxId
          : ballotBoxId // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      electionState: electionState == freezed
          ? _value.electionState
          : electionState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BallotBoxCreated implements BallotBoxCreated {
  const _$BallotBoxCreated(
      {required this.sender,
      required this.ballotBoxId,
      required this.topic,
      required this.electionState});

  @override
  final String? sender;
  @override
  final BigInt? ballotBoxId;
  @override
  final String? topic;
  @override
  final String? electionState;

  @override
  String toString() {
    return 'CreateBallotEvents.ballotBoxCreated(sender: $sender, ballotBoxId: $ballotBoxId, topic: $topic, electionState: $electionState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BallotBoxCreated &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.ballotBoxId, ballotBoxId) ||
                const DeepCollectionEquality()
                    .equals(other.ballotBoxId, ballotBoxId)) &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.electionState, electionState) ||
                const DeepCollectionEquality()
                    .equals(other.electionState, electionState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(ballotBoxId) ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(electionState);

  @JsonKey(ignore: true)
  @override
  $BallotBoxCreatedCopyWith<BallotBoxCreated> get copyWith =>
      _$BallotBoxCreatedCopyWithImpl<BallotBoxCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return ballotBoxCreated(sender, ballotBoxId, topic, electionState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (ballotBoxCreated != null) {
      return ballotBoxCreated(sender, ballotBoxId, topic, electionState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return ballotBoxCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (ballotBoxCreated != null) {
      return ballotBoxCreated(this);
    }
    return orElse();
  }
}

abstract class BallotBoxCreated implements CreateBallotEvents {
  const factory BallotBoxCreated(
      {required String? sender,
      required BigInt? ballotBoxId,
      required String? topic,
      required String? electionState}) = _$BallotBoxCreated;

  String? get sender => throw _privateConstructorUsedError;
  BigInt? get ballotBoxId => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  String? get electionState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BallotBoxCreatedCopyWith<BallotBoxCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BallotBoxStartedCopyWith<$Res> {
  factory $BallotBoxStartedCopyWith(
          BallotBoxStarted value, $Res Function(BallotBoxStarted) then) =
      _$BallotBoxStartedCopyWithImpl<$Res>;
  $Res call(
      {String? sender,
      BigInt? ballotBoxId,
      BigInt? electionState,
      BigInt? endTime});
}

/// @nodoc
class _$BallotBoxStartedCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $BallotBoxStartedCopyWith<$Res> {
  _$BallotBoxStartedCopyWithImpl(
      BallotBoxStarted _value, $Res Function(BallotBoxStarted) _then)
      : super(_value, (v) => _then(v as BallotBoxStarted));

  @override
  BallotBoxStarted get _value => super._value as BallotBoxStarted;

  @override
  $Res call({
    Object? sender = freezed,
    Object? ballotBoxId = freezed,
    Object? electionState = freezed,
    Object? endTime = freezed,
  }) {
    return _then(BallotBoxStarted(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      ballotBoxId: ballotBoxId == freezed
          ? _value.ballotBoxId
          : ballotBoxId // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      electionState: electionState == freezed
          ? _value.electionState
          : electionState // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc

class _$BallotBoxStarted implements BallotBoxStarted {
  const _$BallotBoxStarted(
      {required this.sender,
      required this.ballotBoxId,
      required this.electionState,
      required this.endTime});

  @override
  final String? sender;
  @override
  final BigInt? ballotBoxId;
  @override
  final BigInt? electionState;
  @override
  final BigInt? endTime;

  @override
  String toString() {
    return 'CreateBallotEvents.ballotBoxStarted(sender: $sender, ballotBoxId: $ballotBoxId, electionState: $electionState, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BallotBoxStarted &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.ballotBoxId, ballotBoxId) ||
                const DeepCollectionEquality()
                    .equals(other.ballotBoxId, ballotBoxId)) &&
            (identical(other.electionState, electionState) ||
                const DeepCollectionEquality()
                    .equals(other.electionState, electionState)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(other.endTime, endTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(ballotBoxId) ^
      const DeepCollectionEquality().hash(electionState) ^
      const DeepCollectionEquality().hash(endTime);

  @JsonKey(ignore: true)
  @override
  $BallotBoxStartedCopyWith<BallotBoxStarted> get copyWith =>
      _$BallotBoxStartedCopyWithImpl<BallotBoxStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return ballotBoxStarted(sender, ballotBoxId, electionState, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (ballotBoxStarted != null) {
      return ballotBoxStarted(sender, ballotBoxId, electionState, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return ballotBoxStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (ballotBoxStarted != null) {
      return ballotBoxStarted(this);
    }
    return orElse();
  }
}

abstract class BallotBoxStarted implements CreateBallotEvents {
  const factory BallotBoxStarted(
      {required String? sender,
      required BigInt? ballotBoxId,
      required BigInt? electionState,
      required BigInt? endTime}) = _$BallotBoxStarted;

  String? get sender => throw _privateConstructorUsedError;
  BigInt? get ballotBoxId => throw _privateConstructorUsedError;
  BigInt? get electionState => throw _privateConstructorUsedError;
  BigInt? get endTime => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BallotBoxStartedCopyWith<BallotBoxStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BallotBoxEndedCopyWith<$Res> {
  factory $BallotBoxEndedCopyWith(
          BallotBoxEnded value, $Res Function(BallotBoxEnded) then) =
      _$BallotBoxEndedCopyWithImpl<$Res>;
  $Res call({String? sender, BigInt? ballotBoxId, String? electionState});
}

/// @nodoc
class _$BallotBoxEndedCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $BallotBoxEndedCopyWith<$Res> {
  _$BallotBoxEndedCopyWithImpl(
      BallotBoxEnded _value, $Res Function(BallotBoxEnded) _then)
      : super(_value, (v) => _then(v as BallotBoxEnded));

  @override
  BallotBoxEnded get _value => super._value as BallotBoxEnded;

  @override
  $Res call({
    Object? sender = freezed,
    Object? ballotBoxId = freezed,
    Object? electionState = freezed,
  }) {
    return _then(BallotBoxEnded(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      ballotBoxId: ballotBoxId == freezed
          ? _value.ballotBoxId
          : ballotBoxId // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      electionState: electionState == freezed
          ? _value.electionState
          : electionState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BallotBoxEnded implements BallotBoxEnded {
  const _$BallotBoxEnded(
      {required this.sender,
      required this.ballotBoxId,
      required this.electionState});

  @override
  final String? sender;
  @override
  final BigInt? ballotBoxId;
  @override
  final String? electionState;

  @override
  String toString() {
    return 'CreateBallotEvents.ballotBoxEnded(sender: $sender, ballotBoxId: $ballotBoxId, electionState: $electionState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BallotBoxEnded &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.ballotBoxId, ballotBoxId) ||
                const DeepCollectionEquality()
                    .equals(other.ballotBoxId, ballotBoxId)) &&
            (identical(other.electionState, electionState) ||
                const DeepCollectionEquality()
                    .equals(other.electionState, electionState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(ballotBoxId) ^
      const DeepCollectionEquality().hash(electionState);

  @JsonKey(ignore: true)
  @override
  $BallotBoxEndedCopyWith<BallotBoxEnded> get copyWith =>
      _$BallotBoxEndedCopyWithImpl<BallotBoxEnded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return ballotBoxEnded(sender, ballotBoxId, electionState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (ballotBoxEnded != null) {
      return ballotBoxEnded(sender, ballotBoxId, electionState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return ballotBoxEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (ballotBoxEnded != null) {
      return ballotBoxEnded(this);
    }
    return orElse();
  }
}

abstract class BallotBoxEnded implements CreateBallotEvents {
  const factory BallotBoxEnded(
      {required String? sender,
      required BigInt? ballotBoxId,
      required String? electionState}) = _$BallotBoxEnded;

  String? get sender => throw _privateConstructorUsedError;
  BigInt? get ballotBoxId => throw _privateConstructorUsedError;
  String? get electionState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BallotBoxEndedCopyWith<BallotBoxEnded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBallotBoxCopyWith<$Res> {
  factory $CreateBallotBoxCopyWith(
          CreateBallotBox value, $Res Function(CreateBallotBox) then) =
      _$CreateBallotBoxCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateBallotBoxCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $CreateBallotBoxCopyWith<$Res> {
  _$CreateBallotBoxCopyWithImpl(
      CreateBallotBox _value, $Res Function(CreateBallotBox) _then)
      : super(_value, (v) => _then(v as CreateBallotBox));

  @override
  CreateBallotBox get _value => super._value as CreateBallotBox;
}

/// @nodoc

class _$CreateBallotBox implements CreateBallotBox {
  const _$CreateBallotBox();

  @override
  String toString() {
    return 'CreateBallotEvents.createBallotBox()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateBallotBox);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return createBallotBox();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (createBallotBox != null) {
      return createBallotBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return createBallotBox(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (createBallotBox != null) {
      return createBallotBox(this);
    }
    return orElse();
  }
}

abstract class CreateBallotBox implements CreateBallotEvents {
  const factory CreateBallotBox() = _$CreateBallotBox;
}

/// @nodoc
abstract class $StartElectionCopyWith<$Res> {
  factory $StartElectionCopyWith(
          StartElection value, $Res Function(StartElection) then) =
      _$StartElectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartElectionCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $StartElectionCopyWith<$Res> {
  _$StartElectionCopyWithImpl(
      StartElection _value, $Res Function(StartElection) _then)
      : super(_value, (v) => _then(v as StartElection));

  @override
  StartElection get _value => super._value as StartElection;
}

/// @nodoc

class _$StartElection implements StartElection {
  const _$StartElection();

  @override
  String toString() {
    return 'CreateBallotEvents.startElection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartElection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return startElection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (startElection != null) {
      return startElection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return startElection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (startElection != null) {
      return startElection(this);
    }
    return orElse();
  }
}

abstract class StartElection implements CreateBallotEvents {
  const factory StartElection() = _$StartElection;
}

/// @nodoc
abstract class $EndElectionCopyWith<$Res> {
  factory $EndElectionCopyWith(
          EndElection value, $Res Function(EndElection) then) =
      _$EndElectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndElectionCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $EndElectionCopyWith<$Res> {
  _$EndElectionCopyWithImpl(
      EndElection _value, $Res Function(EndElection) _then)
      : super(_value, (v) => _then(v as EndElection));

  @override
  EndElection get _value => super._value as EndElection;
}

/// @nodoc

class _$EndElection implements EndElection {
  const _$EndElection();

  @override
  String toString() {
    return 'CreateBallotEvents.endElection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EndElection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return endElection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (endElection != null) {
      return endElection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return endElection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (endElection != null) {
      return endElection(this);
    }
    return orElse();
  }
}

abstract class EndElection implements CreateBallotEvents {
  const factory EndElection() = _$EndElection;
}

/// @nodoc
abstract class $VoteCopyWith<$Res> {
  factory $VoteCopyWith(Vote value, $Res Function(Vote) then) =
      _$VoteCopyWithImpl<$Res>;
}

/// @nodoc
class _$VoteCopyWithImpl<$Res> extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $VoteCopyWith<$Res> {
  _$VoteCopyWithImpl(Vote _value, $Res Function(Vote) _then)
      : super(_value, (v) => _then(v as Vote));

  @override
  Vote get _value => super._value as Vote;
}

/// @nodoc

class _$Vote implements Vote {
  const _$Vote();

  @override
  String toString() {
    return 'CreateBallotEvents.vote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Vote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)
        ballotBoxEnded,
    required TResult Function() createBallotBox,
    required TResult Function() startElection,
    required TResult Function() endElection,
    required TResult Function() vote,
  }) {
    return vote();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function(
            String? sender, BigInt? ballotBoxId, String? electionState)?
        ballotBoxEnded,
    TResult Function()? createBallotBox,
    TResult Function()? startElection,
    TResult Function()? endElection,
    TResult Function()? vote,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(BallotBoxEnded value) ballotBoxEnded,
    required TResult Function(CreateBallotBox value) createBallotBox,
    required TResult Function(StartElection value) startElection,
    required TResult Function(EndElection value) endElection,
    required TResult Function(Vote value) vote,
  }) {
    return vote(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(BallotBoxEnded value)? ballotBoxEnded,
    TResult Function(CreateBallotBox value)? createBallotBox,
    TResult Function(StartElection value)? startElection,
    TResult Function(EndElection value)? endElection,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote(this);
    }
    return orElse();
  }
}

abstract class Vote implements CreateBallotEvents {
  const factory Vote() = _$Vote;
}

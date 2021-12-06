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

  OnEditDuration onEditDuration({required BigInt? duration}) {
    return OnEditDuration(
      duration: duration,
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

  CreateBallotBox createBallotBox() {
    return const CreateBallotBox();
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
    required TResult Function(BigInt? duration) onEditDuration,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function() createBallotBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function(BigInt? duration)? onEditDuration,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function()? createBallotBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditDuration value) onEditDuration,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(CreateBallotBox value) createBallotBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditDuration value)? onEditDuration,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(CreateBallotBox value)? createBallotBox,
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
    required TResult Function(BigInt? duration) onEditDuration,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function() createBallotBox,
  }) {
    return onEditTopicChanged(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function(BigInt? duration)? onEditDuration,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function()? createBallotBox,
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
    required TResult Function(OnEditDuration value) onEditDuration,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(CreateBallotBox value) createBallotBox,
  }) {
    return onEditTopicChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditDuration value)? onEditDuration,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(CreateBallotBox value)? createBallotBox,
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
    required TResult Function(BigInt? duration) onEditDuration,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function() createBallotBox,
  }) {
    return onEditCandidateName(candidateId, candidateName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function(BigInt? duration)? onEditDuration,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function()? createBallotBox,
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
    required TResult Function(OnEditDuration value) onEditDuration,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(CreateBallotBox value) createBallotBox,
  }) {
    return onEditCandidateName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditDuration value)? onEditDuration,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(CreateBallotBox value)? createBallotBox,
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
abstract class $OnEditDurationCopyWith<$Res> {
  factory $OnEditDurationCopyWith(
          OnEditDuration value, $Res Function(OnEditDuration) then) =
      _$OnEditDurationCopyWithImpl<$Res>;
  $Res call({BigInt? duration});
}

/// @nodoc
class _$OnEditDurationCopyWithImpl<$Res>
    extends _$CreateBallotEventsCopyWithImpl<$Res>
    implements $OnEditDurationCopyWith<$Res> {
  _$OnEditDurationCopyWithImpl(
      OnEditDuration _value, $Res Function(OnEditDuration) _then)
      : super(_value, (v) => _then(v as OnEditDuration));

  @override
  OnEditDuration get _value => super._value as OnEditDuration;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(OnEditDuration(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc

class _$OnEditDuration implements OnEditDuration {
  const _$OnEditDuration({required this.duration});

  @override
  final BigInt? duration;

  @override
  String toString() {
    return 'CreateBallotEvents.onEditDuration(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnEditDuration &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $OnEditDurationCopyWith<OnEditDuration> get copyWith =>
      _$OnEditDurationCopyWithImpl<OnEditDuration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function(BigInt? duration) onEditDuration,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function() createBallotBox,
  }) {
    return onEditDuration(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function(BigInt? duration)? onEditDuration,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function()? createBallotBox,
    required TResult orElse(),
  }) {
    if (onEditDuration != null) {
      return onEditDuration(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEditTopicChanged value) onEditTopicChanged,
    required TResult Function(OnEditCandidateName value) onEditCandidateName,
    required TResult Function(OnEditDuration value) onEditDuration,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(CreateBallotBox value) createBallotBox,
  }) {
    return onEditDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditDuration value)? onEditDuration,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(CreateBallotBox value)? createBallotBox,
    required TResult orElse(),
  }) {
    if (onEditDuration != null) {
      return onEditDuration(this);
    }
    return orElse();
  }
}

abstract class OnEditDuration implements CreateBallotEvents {
  const factory OnEditDuration({required BigInt? duration}) = _$OnEditDuration;

  BigInt? get duration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnEditDurationCopyWith<OnEditDuration> get copyWith =>
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
    required TResult Function(BigInt? duration) onEditDuration,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function() createBallotBox,
  }) {
    return onEditCandidateAdded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function(BigInt? duration)? onEditDuration,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function()? createBallotBox,
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
    required TResult Function(OnEditDuration value) onEditDuration,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(CreateBallotBox value) createBallotBox,
  }) {
    return onEditCandidateAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditDuration value)? onEditDuration,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(CreateBallotBox value)? createBallotBox,
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
    required TResult Function(BigInt? duration) onEditDuration,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function() createBallotBox,
  }) {
    return onRemoveCandidate(candidateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function(BigInt? duration)? onEditDuration,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function()? createBallotBox,
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
    required TResult Function(OnEditDuration value) onEditDuration,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(CreateBallotBox value) createBallotBox,
  }) {
    return onRemoveCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditDuration value)? onEditDuration,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(CreateBallotBox value)? createBallotBox,
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
    required TResult Function(BigInt? duration) onEditDuration,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function() createBallotBox,
  }) {
    return ballotBoxCreated(sender, ballotBoxId, topic, electionState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function(BigInt? duration)? onEditDuration,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function()? createBallotBox,
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
    required TResult Function(OnEditDuration value) onEditDuration,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(CreateBallotBox value) createBallotBox,
  }) {
    return ballotBoxCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditDuration value)? onEditDuration,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(CreateBallotBox value)? createBallotBox,
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
    required TResult Function(BigInt? duration) onEditDuration,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function() createBallotBox,
  }) {
    return ballotBoxStarted(sender, ballotBoxId, electionState, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function(BigInt? duration)? onEditDuration,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function()? createBallotBox,
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
    required TResult Function(OnEditDuration value) onEditDuration,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(CreateBallotBox value) createBallotBox,
  }) {
    return ballotBoxStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditDuration value)? onEditDuration,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(CreateBallotBox value)? createBallotBox,
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
    required TResult Function(BigInt? duration) onEditDuration,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            String? topic, String? electionState)
        ballotBoxCreated,
    required TResult Function(String? sender, BigInt? ballotBoxId,
            BigInt? electionState, BigInt? endTime)
        ballotBoxStarted,
    required TResult Function() createBallotBox,
  }) {
    return createBallotBox();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? topic)? onEditTopicChanged,
    TResult Function(BigInt? candidateId, String? candidateName)?
        onEditCandidateName,
    TResult Function(BigInt? duration)? onEditDuration,
    TResult Function()? onEditCandidateAdded,
    TResult Function(BigInt? candidateId)? onRemoveCandidate,
    TResult Function(String? sender, BigInt? ballotBoxId, String? topic,
            String? electionState)?
        ballotBoxCreated,
    TResult Function(String? sender, BigInt? ballotBoxId, BigInt? electionState,
            BigInt? endTime)?
        ballotBoxStarted,
    TResult Function()? createBallotBox,
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
    required TResult Function(OnEditDuration value) onEditDuration,
    required TResult Function(OnEditCandidateAdded value) onEditCandidateAdded,
    required TResult Function(OnRemoveCandidate value) onRemoveCandidate,
    required TResult Function(BallotBoxCreated value) ballotBoxCreated,
    required TResult Function(BallotBoxStarted value) ballotBoxStarted,
    required TResult Function(CreateBallotBox value) createBallotBox,
  }) {
    return createBallotBox(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditDuration value)? onEditDuration,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(BallotBoxCreated value)? ballotBoxCreated,
    TResult Function(BallotBoxStarted value)? ballotBoxStarted,
    TResult Function(CreateBallotBox value)? createBallotBox,
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

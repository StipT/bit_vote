// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'recent_ballots_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecentBallotsEventsTearOff {
  const _$RecentBallotsEventsTearOff();

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

  Vote vote() {
    return const Vote();
  }
}

/// @nodoc
const $RecentBallotsEvents = _$RecentBallotsEventsTearOff();

/// @nodoc
mixin _$RecentBallotsEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? topic) onEditTopicChanged,
    required TResult Function(BigInt? candidateId, String? candidateName)
        onEditCandidateName,
    required TResult Function() onEditCandidateAdded,
    required TResult Function(BigInt? candidateId) onRemoveCandidate,
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
    required TResult Function(Vote value) vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEditTopicChanged value)? onEditTopicChanged,
    TResult Function(OnEditCandidateName value)? onEditCandidateName,
    TResult Function(OnEditCandidateAdded value)? onEditCandidateAdded,
    TResult Function(OnRemoveCandidate value)? onRemoveCandidate,
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentBallotsEventsCopyWith<$Res> {
  factory $RecentBallotsEventsCopyWith(
          RecentBallotsEvents value, $Res Function(RecentBallotsEvents) then) =
      _$RecentBallotsEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentBallotsEventsCopyWithImpl<$Res>
    implements $RecentBallotsEventsCopyWith<$Res> {
  _$RecentBallotsEventsCopyWithImpl(this._value, this._then);

  final RecentBallotsEvents _value;
  // ignore: unused_field
  final $Res Function(RecentBallotsEvents) _then;
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
    extends _$RecentBallotsEventsCopyWithImpl<$Res>
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
    return 'RecentBallotsEvents.onEditTopicChanged(topic: $topic)';
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
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (onEditTopicChanged != null) {
      return onEditTopicChanged(this);
    }
    return orElse();
  }
}

abstract class OnEditTopicChanged implements RecentBallotsEvents {
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
    extends _$RecentBallotsEventsCopyWithImpl<$Res>
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
    return 'RecentBallotsEvents.onEditCandidateName(candidateId: $candidateId, candidateName: $candidateName)';
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
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (onEditCandidateName != null) {
      return onEditCandidateName(this);
    }
    return orElse();
  }
}

abstract class OnEditCandidateName implements RecentBallotsEvents {
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
    extends _$RecentBallotsEventsCopyWithImpl<$Res>
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
    return 'RecentBallotsEvents.onEditCandidateAdded()';
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
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (onEditCandidateAdded != null) {
      return onEditCandidateAdded(this);
    }
    return orElse();
  }
}

abstract class OnEditCandidateAdded implements RecentBallotsEvents {
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
    extends _$RecentBallotsEventsCopyWithImpl<$Res>
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
    return 'RecentBallotsEvents.onRemoveCandidate(candidateId: $candidateId)';
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
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (onRemoveCandidate != null) {
      return onRemoveCandidate(this);
    }
    return orElse();
  }
}

abstract class OnRemoveCandidate implements RecentBallotsEvents {
  const factory OnRemoveCandidate({required BigInt? candidateId}) =
      _$OnRemoveCandidate;

  BigInt? get candidateId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnRemoveCandidateCopyWith<OnRemoveCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteCopyWith<$Res> {
  factory $VoteCopyWith(Vote value, $Res Function(Vote) then) =
      _$VoteCopyWithImpl<$Res>;
}

/// @nodoc
class _$VoteCopyWithImpl<$Res> extends _$RecentBallotsEventsCopyWithImpl<$Res>
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
    return 'RecentBallotsEvents.vote()';
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
    TResult Function(Vote value)? vote,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote(this);
    }
    return orElse();
  }
}

abstract class Vote implements RecentBallotsEvents {
  const factory Vote() = _$Vote;
}

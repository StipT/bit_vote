// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vote_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VoteEventsTearOff {
  const _$VoteEventsTearOff();

  OnBallotIdChange onBallotIdChange({required BigInt? id}) {
    return OnBallotIdChange(
      id: id,
    );
  }

  ShowBallotBox showBallotBox() {
    return const ShowBallotBox();
  }

  Vote vote() {
    return const Vote();
  }

  AddVoter addVoter() {
    return const AddVoter();
  }

  OnCandidateSelected onCandidateSelected({required BigInt? candidateId}) {
    return OnCandidateSelected(
      candidateId: candidateId,
    );
  }
}

/// @nodoc
const $VoteEvents = _$VoteEventsTearOff();

/// @nodoc
mixin _$VoteEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt? id) onBallotIdChange,
    required TResult Function() showBallotBox,
    required TResult Function() vote,
    required TResult Function() addVoter,
    required TResult Function(BigInt? candidateId) onCandidateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt? id)? onBallotIdChange,
    TResult Function()? showBallotBox,
    TResult Function()? vote,
    TResult Function()? addVoter,
    TResult Function(BigInt? candidateId)? onCandidateSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBallotIdChange value) onBallotIdChange,
    required TResult Function(ShowBallotBox value) showBallotBox,
    required TResult Function(Vote value) vote,
    required TResult Function(AddVoter value) addVoter,
    required TResult Function(OnCandidateSelected value) onCandidateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBallotIdChange value)? onBallotIdChange,
    TResult Function(ShowBallotBox value)? showBallotBox,
    TResult Function(Vote value)? vote,
    TResult Function(AddVoter value)? addVoter,
    TResult Function(OnCandidateSelected value)? onCandidateSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteEventsCopyWith<$Res> {
  factory $VoteEventsCopyWith(
          VoteEvents value, $Res Function(VoteEvents) then) =
      _$VoteEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$VoteEventsCopyWithImpl<$Res> implements $VoteEventsCopyWith<$Res> {
  _$VoteEventsCopyWithImpl(this._value, this._then);

  final VoteEvents _value;
  // ignore: unused_field
  final $Res Function(VoteEvents) _then;
}

/// @nodoc
abstract class $OnBallotIdChangeCopyWith<$Res> {
  factory $OnBallotIdChangeCopyWith(
          OnBallotIdChange value, $Res Function(OnBallotIdChange) then) =
      _$OnBallotIdChangeCopyWithImpl<$Res>;
  $Res call({BigInt? id});
}

/// @nodoc
class _$OnBallotIdChangeCopyWithImpl<$Res>
    extends _$VoteEventsCopyWithImpl<$Res>
    implements $OnBallotIdChangeCopyWith<$Res> {
  _$OnBallotIdChangeCopyWithImpl(
      OnBallotIdChange _value, $Res Function(OnBallotIdChange) _then)
      : super(_value, (v) => _then(v as OnBallotIdChange));

  @override
  OnBallotIdChange get _value => super._value as OnBallotIdChange;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(OnBallotIdChange(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc

class _$OnBallotIdChange implements OnBallotIdChange {
  const _$OnBallotIdChange({required this.id});

  @override
  final BigInt? id;

  @override
  String toString() {
    return 'VoteEvents.onBallotIdChange(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBallotIdChange &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $OnBallotIdChangeCopyWith<OnBallotIdChange> get copyWith =>
      _$OnBallotIdChangeCopyWithImpl<OnBallotIdChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt? id) onBallotIdChange,
    required TResult Function() showBallotBox,
    required TResult Function() vote,
    required TResult Function() addVoter,
    required TResult Function(BigInt? candidateId) onCandidateSelected,
  }) {
    return onBallotIdChange(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt? id)? onBallotIdChange,
    TResult Function()? showBallotBox,
    TResult Function()? vote,
    TResult Function()? addVoter,
    TResult Function(BigInt? candidateId)? onCandidateSelected,
    required TResult orElse(),
  }) {
    if (onBallotIdChange != null) {
      return onBallotIdChange(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBallotIdChange value) onBallotIdChange,
    required TResult Function(ShowBallotBox value) showBallotBox,
    required TResult Function(Vote value) vote,
    required TResult Function(AddVoter value) addVoter,
    required TResult Function(OnCandidateSelected value) onCandidateSelected,
  }) {
    return onBallotIdChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBallotIdChange value)? onBallotIdChange,
    TResult Function(ShowBallotBox value)? showBallotBox,
    TResult Function(Vote value)? vote,
    TResult Function(AddVoter value)? addVoter,
    TResult Function(OnCandidateSelected value)? onCandidateSelected,
    required TResult orElse(),
  }) {
    if (onBallotIdChange != null) {
      return onBallotIdChange(this);
    }
    return orElse();
  }
}

abstract class OnBallotIdChange implements VoteEvents {
  const factory OnBallotIdChange({required BigInt? id}) = _$OnBallotIdChange;

  BigInt? get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBallotIdChangeCopyWith<OnBallotIdChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowBallotBoxCopyWith<$Res> {
  factory $ShowBallotBoxCopyWith(
          ShowBallotBox value, $Res Function(ShowBallotBox) then) =
      _$ShowBallotBoxCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowBallotBoxCopyWithImpl<$Res> extends _$VoteEventsCopyWithImpl<$Res>
    implements $ShowBallotBoxCopyWith<$Res> {
  _$ShowBallotBoxCopyWithImpl(
      ShowBallotBox _value, $Res Function(ShowBallotBox) _then)
      : super(_value, (v) => _then(v as ShowBallotBox));

  @override
  ShowBallotBox get _value => super._value as ShowBallotBox;
}

/// @nodoc

class _$ShowBallotBox implements ShowBallotBox {
  const _$ShowBallotBox();

  @override
  String toString() {
    return 'VoteEvents.showBallotBox()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowBallotBox);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt? id) onBallotIdChange,
    required TResult Function() showBallotBox,
    required TResult Function() vote,
    required TResult Function() addVoter,
    required TResult Function(BigInt? candidateId) onCandidateSelected,
  }) {
    return showBallotBox();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt? id)? onBallotIdChange,
    TResult Function()? showBallotBox,
    TResult Function()? vote,
    TResult Function()? addVoter,
    TResult Function(BigInt? candidateId)? onCandidateSelected,
    required TResult orElse(),
  }) {
    if (showBallotBox != null) {
      return showBallotBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBallotIdChange value) onBallotIdChange,
    required TResult Function(ShowBallotBox value) showBallotBox,
    required TResult Function(Vote value) vote,
    required TResult Function(AddVoter value) addVoter,
    required TResult Function(OnCandidateSelected value) onCandidateSelected,
  }) {
    return showBallotBox(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBallotIdChange value)? onBallotIdChange,
    TResult Function(ShowBallotBox value)? showBallotBox,
    TResult Function(Vote value)? vote,
    TResult Function(AddVoter value)? addVoter,
    TResult Function(OnCandidateSelected value)? onCandidateSelected,
    required TResult orElse(),
  }) {
    if (showBallotBox != null) {
      return showBallotBox(this);
    }
    return orElse();
  }
}

abstract class ShowBallotBox implements VoteEvents {
  const factory ShowBallotBox() = _$ShowBallotBox;
}

/// @nodoc
abstract class $VoteCopyWith<$Res> {
  factory $VoteCopyWith(Vote value, $Res Function(Vote) then) =
      _$VoteCopyWithImpl<$Res>;
}

/// @nodoc
class _$VoteCopyWithImpl<$Res> extends _$VoteEventsCopyWithImpl<$Res>
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
    return 'VoteEvents.vote()';
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
    required TResult Function(BigInt? id) onBallotIdChange,
    required TResult Function() showBallotBox,
    required TResult Function() vote,
    required TResult Function() addVoter,
    required TResult Function(BigInt? candidateId) onCandidateSelected,
  }) {
    return vote();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt? id)? onBallotIdChange,
    TResult Function()? showBallotBox,
    TResult Function()? vote,
    TResult Function()? addVoter,
    TResult Function(BigInt? candidateId)? onCandidateSelected,
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
    required TResult Function(OnBallotIdChange value) onBallotIdChange,
    required TResult Function(ShowBallotBox value) showBallotBox,
    required TResult Function(Vote value) vote,
    required TResult Function(AddVoter value) addVoter,
    required TResult Function(OnCandidateSelected value) onCandidateSelected,
  }) {
    return vote(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBallotIdChange value)? onBallotIdChange,
    TResult Function(ShowBallotBox value)? showBallotBox,
    TResult Function(Vote value)? vote,
    TResult Function(AddVoter value)? addVoter,
    TResult Function(OnCandidateSelected value)? onCandidateSelected,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote(this);
    }
    return orElse();
  }
}

abstract class Vote implements VoteEvents {
  const factory Vote() = _$Vote;
}

/// @nodoc
abstract class $AddVoterCopyWith<$Res> {
  factory $AddVoterCopyWith(AddVoter value, $Res Function(AddVoter) then) =
      _$AddVoterCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddVoterCopyWithImpl<$Res> extends _$VoteEventsCopyWithImpl<$Res>
    implements $AddVoterCopyWith<$Res> {
  _$AddVoterCopyWithImpl(AddVoter _value, $Res Function(AddVoter) _then)
      : super(_value, (v) => _then(v as AddVoter));

  @override
  AddVoter get _value => super._value as AddVoter;
}

/// @nodoc

class _$AddVoter implements AddVoter {
  const _$AddVoter();

  @override
  String toString() {
    return 'VoteEvents.addVoter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddVoter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt? id) onBallotIdChange,
    required TResult Function() showBallotBox,
    required TResult Function() vote,
    required TResult Function() addVoter,
    required TResult Function(BigInt? candidateId) onCandidateSelected,
  }) {
    return addVoter();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt? id)? onBallotIdChange,
    TResult Function()? showBallotBox,
    TResult Function()? vote,
    TResult Function()? addVoter,
    TResult Function(BigInt? candidateId)? onCandidateSelected,
    required TResult orElse(),
  }) {
    if (addVoter != null) {
      return addVoter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBallotIdChange value) onBallotIdChange,
    required TResult Function(ShowBallotBox value) showBallotBox,
    required TResult Function(Vote value) vote,
    required TResult Function(AddVoter value) addVoter,
    required TResult Function(OnCandidateSelected value) onCandidateSelected,
  }) {
    return addVoter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBallotIdChange value)? onBallotIdChange,
    TResult Function(ShowBallotBox value)? showBallotBox,
    TResult Function(Vote value)? vote,
    TResult Function(AddVoter value)? addVoter,
    TResult Function(OnCandidateSelected value)? onCandidateSelected,
    required TResult orElse(),
  }) {
    if (addVoter != null) {
      return addVoter(this);
    }
    return orElse();
  }
}

abstract class AddVoter implements VoteEvents {
  const factory AddVoter() = _$AddVoter;
}

/// @nodoc
abstract class $OnCandidateSelectedCopyWith<$Res> {
  factory $OnCandidateSelectedCopyWith(
          OnCandidateSelected value, $Res Function(OnCandidateSelected) then) =
      _$OnCandidateSelectedCopyWithImpl<$Res>;
  $Res call({BigInt? candidateId});
}

/// @nodoc
class _$OnCandidateSelectedCopyWithImpl<$Res>
    extends _$VoteEventsCopyWithImpl<$Res>
    implements $OnCandidateSelectedCopyWith<$Res> {
  _$OnCandidateSelectedCopyWithImpl(
      OnCandidateSelected _value, $Res Function(OnCandidateSelected) _then)
      : super(_value, (v) => _then(v as OnCandidateSelected));

  @override
  OnCandidateSelected get _value => super._value as OnCandidateSelected;

  @override
  $Res call({
    Object? candidateId = freezed,
  }) {
    return _then(OnCandidateSelected(
      candidateId: candidateId == freezed
          ? _value.candidateId
          : candidateId // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc

class _$OnCandidateSelected implements OnCandidateSelected {
  const _$OnCandidateSelected({required this.candidateId});

  @override
  final BigInt? candidateId;

  @override
  String toString() {
    return 'VoteEvents.onCandidateSelected(candidateId: $candidateId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCandidateSelected &&
            (identical(other.candidateId, candidateId) ||
                const DeepCollectionEquality()
                    .equals(other.candidateId, candidateId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(candidateId);

  @JsonKey(ignore: true)
  @override
  $OnCandidateSelectedCopyWith<OnCandidateSelected> get copyWith =>
      _$OnCandidateSelectedCopyWithImpl<OnCandidateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt? id) onBallotIdChange,
    required TResult Function() showBallotBox,
    required TResult Function() vote,
    required TResult Function() addVoter,
    required TResult Function(BigInt? candidateId) onCandidateSelected,
  }) {
    return onCandidateSelected(candidateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt? id)? onBallotIdChange,
    TResult Function()? showBallotBox,
    TResult Function()? vote,
    TResult Function()? addVoter,
    TResult Function(BigInt? candidateId)? onCandidateSelected,
    required TResult orElse(),
  }) {
    if (onCandidateSelected != null) {
      return onCandidateSelected(candidateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBallotIdChange value) onBallotIdChange,
    required TResult Function(ShowBallotBox value) showBallotBox,
    required TResult Function(Vote value) vote,
    required TResult Function(AddVoter value) addVoter,
    required TResult Function(OnCandidateSelected value) onCandidateSelected,
  }) {
    return onCandidateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBallotIdChange value)? onBallotIdChange,
    TResult Function(ShowBallotBox value)? showBallotBox,
    TResult Function(Vote value)? vote,
    TResult Function(AddVoter value)? addVoter,
    TResult Function(OnCandidateSelected value)? onCandidateSelected,
    required TResult orElse(),
  }) {
    if (onCandidateSelected != null) {
      return onCandidateSelected(this);
    }
    return orElse();
  }
}

abstract class OnCandidateSelected implements VoteEvents {
  const factory OnCandidateSelected({required BigInt? candidateId}) =
      _$OnCandidateSelected;

  BigInt? get candidateId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCandidateSelectedCopyWith<OnCandidateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

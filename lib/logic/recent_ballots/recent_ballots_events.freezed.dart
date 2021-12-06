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

  ShowBallotBox showBallotBox() {
    return const ShowBallotBox();
  }
}

/// @nodoc
const $RecentBallotsEvents = _$RecentBallotsEventsTearOff();

/// @nodoc
mixin _$RecentBallotsEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showBallotBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showBallotBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowBallotBox value) showBallotBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowBallotBox value)? showBallotBox,
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
abstract class $ShowBallotBoxCopyWith<$Res> {
  factory $ShowBallotBoxCopyWith(
          ShowBallotBox value, $Res Function(ShowBallotBox) then) =
      _$ShowBallotBoxCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowBallotBoxCopyWithImpl<$Res>
    extends _$RecentBallotsEventsCopyWithImpl<$Res>
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
    return 'RecentBallotsEvents.showBallotBox()';
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
    required TResult Function() showBallotBox,
  }) {
    return showBallotBox();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showBallotBox,
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
    required TResult Function(ShowBallotBox value) showBallotBox,
  }) {
    return showBallotBox(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowBallotBox value)? showBallotBox,
    required TResult orElse(),
  }) {
    if (showBallotBox != null) {
      return showBallotBox(this);
    }
    return orElse();
  }
}

abstract class ShowBallotBox implements RecentBallotsEvents {
  const factory ShowBallotBox() = _$ShowBallotBox;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuEventsTearOff {
  const _$MenuEventsTearOff();

  InitUser initUser() {
    return const InitUser();
  }

  OnLogout onLogout() {
    return const OnLogout();
  }
}

/// @nodoc
const $MenuEvents = _$MenuEventsTearOff();

/// @nodoc
mixin _$MenuEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initUser,
    required TResult Function() onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initUser,
    TResult Function()? onLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnLogout value) onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitUser value)? initUser,
    TResult Function(OnLogout value)? onLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventsCopyWith<$Res> {
  factory $MenuEventsCopyWith(
          MenuEvents value, $Res Function(MenuEvents) then) =
      _$MenuEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuEventsCopyWithImpl<$Res> implements $MenuEventsCopyWith<$Res> {
  _$MenuEventsCopyWithImpl(this._value, this._then);

  final MenuEvents _value;
  // ignore: unused_field
  final $Res Function(MenuEvents) _then;
}

/// @nodoc
abstract class $InitUserCopyWith<$Res> {
  factory $InitUserCopyWith(InitUser value, $Res Function(InitUser) then) =
      _$InitUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitUserCopyWithImpl<$Res> extends _$MenuEventsCopyWithImpl<$Res>
    implements $InitUserCopyWith<$Res> {
  _$InitUserCopyWithImpl(InitUser _value, $Res Function(InitUser) _then)
      : super(_value, (v) => _then(v as InitUser));

  @override
  InitUser get _value => super._value as InitUser;
}

/// @nodoc

class _$InitUser implements InitUser {
  const _$InitUser();

  @override
  String toString() {
    return 'MenuEvents.initUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initUser,
    required TResult Function() onLogout,
  }) {
    return initUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initUser,
    TResult Function()? onLogout,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnLogout value) onLogout,
  }) {
    return initUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitUser value)? initUser,
    TResult Function(OnLogout value)? onLogout,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser(this);
    }
    return orElse();
  }
}

abstract class InitUser implements MenuEvents {
  const factory InitUser() = _$InitUser;
}

/// @nodoc
abstract class $OnLogoutCopyWith<$Res> {
  factory $OnLogoutCopyWith(OnLogout value, $Res Function(OnLogout) then) =
      _$OnLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLogoutCopyWithImpl<$Res> extends _$MenuEventsCopyWithImpl<$Res>
    implements $OnLogoutCopyWith<$Res> {
  _$OnLogoutCopyWithImpl(OnLogout _value, $Res Function(OnLogout) _then)
      : super(_value, (v) => _then(v as OnLogout));

  @override
  OnLogout get _value => super._value as OnLogout;
}

/// @nodoc

class _$OnLogout implements OnLogout {
  const _$OnLogout();

  @override
  String toString() {
    return 'MenuEvents.onLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initUser,
    required TResult Function() onLogout,
  }) {
    return onLogout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initUser,
    TResult Function()? onLogout,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnLogout value) onLogout,
  }) {
    return onLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitUser value)? initUser,
    TResult Function(OnLogout value)? onLogout,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout(this);
    }
    return orElse();
  }
}

abstract class OnLogout implements MenuEvents {
  const factory OnLogout() = _$OnLogout;
}

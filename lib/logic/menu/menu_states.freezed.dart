// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuStatesTearOff {
  const _$MenuStatesTearOff();

  _MenuStates call(
      {required bool isSubmitting,
      required bool showError,
      required Option<Either<FirestoreFailures, Unit>> initFailureOrSuccess,
      required Option<Either<AuthFailures, Unit>> logoutFailureOrSuccess}) {
    return _MenuStates(
      isSubmitting: isSubmitting,
      showError: showError,
      initFailureOrSuccess: initFailureOrSuccess,
      logoutFailureOrSuccess: logoutFailureOrSuccess,
    );
  }
}

/// @nodoc
const $MenuStates = _$MenuStatesTearOff();

/// @nodoc
mixin _$MenuStates {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailures, Unit>> get initFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailures, Unit>> get logoutFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStatesCopyWith<MenuStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStatesCopyWith<$Res> {
  factory $MenuStatesCopyWith(
          MenuStates value, $Res Function(MenuStates) then) =
      _$MenuStatesCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool showError,
      Option<Either<FirestoreFailures, Unit>> initFailureOrSuccess,
      Option<Either<AuthFailures, Unit>> logoutFailureOrSuccess});
}

/// @nodoc
class _$MenuStatesCopyWithImpl<$Res> implements $MenuStatesCopyWith<$Res> {
  _$MenuStatesCopyWithImpl(this._value, this._then);

  final MenuStates _value;
  // ignore: unused_field
  final $Res Function(MenuStates) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? showError = freezed,
    Object? initFailureOrSuccess = freezed,
    Object? logoutFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      initFailureOrSuccess: initFailureOrSuccess == freezed
          ? _value.initFailureOrSuccess
          : initFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailures, Unit>>,
      logoutFailureOrSuccess: logoutFailureOrSuccess == freezed
          ? _value.logoutFailureOrSuccess
          : logoutFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailures, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$MenuStatesCopyWith<$Res> implements $MenuStatesCopyWith<$Res> {
  factory _$MenuStatesCopyWith(
          _MenuStates value, $Res Function(_MenuStates) then) =
      __$MenuStatesCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      bool showError,
      Option<Either<FirestoreFailures, Unit>> initFailureOrSuccess,
      Option<Either<AuthFailures, Unit>> logoutFailureOrSuccess});
}

/// @nodoc
class __$MenuStatesCopyWithImpl<$Res> extends _$MenuStatesCopyWithImpl<$Res>
    implements _$MenuStatesCopyWith<$Res> {
  __$MenuStatesCopyWithImpl(
      _MenuStates _value, $Res Function(_MenuStates) _then)
      : super(_value, (v) => _then(v as _MenuStates));

  @override
  _MenuStates get _value => super._value as _MenuStates;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? showError = freezed,
    Object? initFailureOrSuccess = freezed,
    Object? logoutFailureOrSuccess = freezed,
  }) {
    return _then(_MenuStates(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      initFailureOrSuccess: initFailureOrSuccess == freezed
          ? _value.initFailureOrSuccess
          : initFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailures, Unit>>,
      logoutFailureOrSuccess: logoutFailureOrSuccess == freezed
          ? _value.logoutFailureOrSuccess
          : logoutFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_MenuStates implements _MenuStates {
  const _$_MenuStates(
      {required this.isSubmitting,
      required this.showError,
      required this.initFailureOrSuccess,
      required this.logoutFailureOrSuccess});

  @override
  final bool isSubmitting;
  @override
  final bool showError;
  @override
  final Option<Either<FirestoreFailures, Unit>> initFailureOrSuccess;
  @override
  final Option<Either<AuthFailures, Unit>> logoutFailureOrSuccess;

  @override
  String toString() {
    return 'MenuStates(isSubmitting: $isSubmitting, showError: $showError, initFailureOrSuccess: $initFailureOrSuccess, logoutFailureOrSuccess: $logoutFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuStates &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(other.initFailureOrSuccess, initFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.initFailureOrSuccess, initFailureOrSuccess)) &&
            (identical(other.logoutFailureOrSuccess, logoutFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.logoutFailureOrSuccess, logoutFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(initFailureOrSuccess) ^
      const DeepCollectionEquality().hash(logoutFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$MenuStatesCopyWith<_MenuStates> get copyWith =>
      __$MenuStatesCopyWithImpl<_MenuStates>(this, _$identity);
}

abstract class _MenuStates implements MenuStates {
  const factory _MenuStates(
          {required bool isSubmitting,
          required bool showError,
          required Option<Either<FirestoreFailures, Unit>> initFailureOrSuccess,
          required Option<Either<AuthFailures, Unit>> logoutFailureOrSuccess}) =
      _$_MenuStates;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  Option<Either<FirestoreFailures, Unit>> get initFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailures, Unit>> get logoutFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuStatesCopyWith<_MenuStates> get copyWith =>
      throw _privateConstructorUsedError;
}

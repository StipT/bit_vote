// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'firestore_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FirestoreStatesTearOff {
  const _$FirestoreStatesTearOff();

  _FirestoreStates call(
      {required UserData userData,
      required bool isSubmitting,
      required List<String> ballots,
      required bool showError,
      required Option<Either<FirestoreFailures, UserData>>
          requestFailureOrSuccess,
      required Option<Either<FirestoreFailures, Unit>>
          storeBallotFailureOrSuccess,
      required Option<Either<FirestoreFailures, List<String>>>
          readBallotsFailureOrSuccess}) {
    return _FirestoreStates(
      userData: userData,
      isSubmitting: isSubmitting,
      ballots: ballots,
      showError: showError,
      requestFailureOrSuccess: requestFailureOrSuccess,
      storeBallotFailureOrSuccess: storeBallotFailureOrSuccess,
      readBallotsFailureOrSuccess: readBallotsFailureOrSuccess,
    );
  }
}

/// @nodoc
const $FirestoreStates = _$FirestoreStatesTearOff();

/// @nodoc
mixin _$FirestoreStates {
  UserData get userData => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  List<String> get ballots => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailures, UserData>> get requestFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirestoreFailures, Unit>> get storeBallotFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirestoreFailures, List<String>>>
      get readBallotsFailureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirestoreStatesCopyWith<FirestoreStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreStatesCopyWith<$Res> {
  factory $FirestoreStatesCopyWith(
          FirestoreStates value, $Res Function(FirestoreStates) then) =
      _$FirestoreStatesCopyWithImpl<$Res>;
  $Res call(
      {UserData userData,
      bool isSubmitting,
      List<String> ballots,
      bool showError,
      Option<Either<FirestoreFailures, UserData>> requestFailureOrSuccess,
      Option<Either<FirestoreFailures, Unit>> storeBallotFailureOrSuccess,
      Option<Either<FirestoreFailures, List<String>>>
          readBallotsFailureOrSuccess});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class _$FirestoreStatesCopyWithImpl<$Res>
    implements $FirestoreStatesCopyWith<$Res> {
  _$FirestoreStatesCopyWithImpl(this._value, this._then);

  final FirestoreStates _value;
  // ignore: unused_field
  final $Res Function(FirestoreStates) _then;

  @override
  $Res call({
    Object? userData = freezed,
    Object? isSubmitting = freezed,
    Object? ballots = freezed,
    Object? showError = freezed,
    Object? requestFailureOrSuccess = freezed,
    Object? storeBallotFailureOrSuccess = freezed,
    Object? readBallotsFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      ballots: ballots == freezed
          ? _value.ballots
          : ballots // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      requestFailureOrSuccess: requestFailureOrSuccess == freezed
          ? _value.requestFailureOrSuccess
          : requestFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailures, UserData>>,
      storeBallotFailureOrSuccess: storeBallotFailureOrSuccess == freezed
          ? _value.storeBallotFailureOrSuccess
          : storeBallotFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailures, Unit>>,
      readBallotsFailureOrSuccess: readBallotsFailureOrSuccess == freezed
          ? _value.readBallotsFailureOrSuccess
          : readBallotsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailures, List<String>>>,
    ));
  }

  @override
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc
abstract class _$FirestoreStatesCopyWith<$Res>
    implements $FirestoreStatesCopyWith<$Res> {
  factory _$FirestoreStatesCopyWith(
          _FirestoreStates value, $Res Function(_FirestoreStates) then) =
      __$FirestoreStatesCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserData userData,
      bool isSubmitting,
      List<String> ballots,
      bool showError,
      Option<Either<FirestoreFailures, UserData>> requestFailureOrSuccess,
      Option<Either<FirestoreFailures, Unit>> storeBallotFailureOrSuccess,
      Option<Either<FirestoreFailures, List<String>>>
          readBallotsFailureOrSuccess});

  @override
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$FirestoreStatesCopyWithImpl<$Res>
    extends _$FirestoreStatesCopyWithImpl<$Res>
    implements _$FirestoreStatesCopyWith<$Res> {
  __$FirestoreStatesCopyWithImpl(
      _FirestoreStates _value, $Res Function(_FirestoreStates) _then)
      : super(_value, (v) => _then(v as _FirestoreStates));

  @override
  _FirestoreStates get _value => super._value as _FirestoreStates;

  @override
  $Res call({
    Object? userData = freezed,
    Object? isSubmitting = freezed,
    Object? ballots = freezed,
    Object? showError = freezed,
    Object? requestFailureOrSuccess = freezed,
    Object? storeBallotFailureOrSuccess = freezed,
    Object? readBallotsFailureOrSuccess = freezed,
  }) {
    return _then(_FirestoreStates(
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      ballots: ballots == freezed
          ? _value.ballots
          : ballots // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      requestFailureOrSuccess: requestFailureOrSuccess == freezed
          ? _value.requestFailureOrSuccess
          : requestFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailures, UserData>>,
      storeBallotFailureOrSuccess: storeBallotFailureOrSuccess == freezed
          ? _value.storeBallotFailureOrSuccess
          : storeBallotFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailures, Unit>>,
      readBallotsFailureOrSuccess: readBallotsFailureOrSuccess == freezed
          ? _value.readBallotsFailureOrSuccess
          : readBallotsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailures, List<String>>>,
    ));
  }
}

/// @nodoc

class _$_FirestoreStates implements _FirestoreStates {
  const _$_FirestoreStates(
      {required this.userData,
      required this.isSubmitting,
      required this.ballots,
      required this.showError,
      required this.requestFailureOrSuccess,
      required this.storeBallotFailureOrSuccess,
      required this.readBallotsFailureOrSuccess});

  @override
  final UserData userData;
  @override
  final bool isSubmitting;
  @override
  final List<String> ballots;
  @override
  final bool showError;
  @override
  final Option<Either<FirestoreFailures, UserData>> requestFailureOrSuccess;
  @override
  final Option<Either<FirestoreFailures, Unit>> storeBallotFailureOrSuccess;
  @override
  final Option<Either<FirestoreFailures, List<String>>>
      readBallotsFailureOrSuccess;

  @override
  String toString() {
    return 'FirestoreStates(userData: $userData, isSubmitting: $isSubmitting, ballots: $ballots, showError: $showError, requestFailureOrSuccess: $requestFailureOrSuccess, storeBallotFailureOrSuccess: $storeBallotFailureOrSuccess, readBallotsFailureOrSuccess: $readBallotsFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirestoreStates &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.ballots, ballots) ||
                const DeepCollectionEquality()
                    .equals(other.ballots, ballots)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(
                    other.requestFailureOrSuccess, requestFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.requestFailureOrSuccess, requestFailureOrSuccess)) &&
            (identical(other.storeBallotFailureOrSuccess,
                    storeBallotFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.storeBallotFailureOrSuccess,
                    storeBallotFailureOrSuccess)) &&
            (identical(other.readBallotsFailureOrSuccess,
                    readBallotsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.readBallotsFailureOrSuccess,
                    readBallotsFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userData) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(ballots) ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(requestFailureOrSuccess) ^
      const DeepCollectionEquality().hash(storeBallotFailureOrSuccess) ^
      const DeepCollectionEquality().hash(readBallotsFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$FirestoreStatesCopyWith<_FirestoreStates> get copyWith =>
      __$FirestoreStatesCopyWithImpl<_FirestoreStates>(this, _$identity);
}

abstract class _FirestoreStates implements FirestoreStates {
  const factory _FirestoreStates(
      {required UserData userData,
      required bool isSubmitting,
      required List<String> ballots,
      required bool showError,
      required Option<Either<FirestoreFailures, UserData>>
          requestFailureOrSuccess,
      required Option<Either<FirestoreFailures, Unit>>
          storeBallotFailureOrSuccess,
      required Option<Either<FirestoreFailures, List<String>>>
          readBallotsFailureOrSuccess}) = _$_FirestoreStates;

  @override
  UserData get userData => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  List<String> get ballots => throw _privateConstructorUsedError;
  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  Option<Either<FirestoreFailures, UserData>> get requestFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirestoreFailures, Unit>> get storeBallotFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirestoreFailures, List<String>>>
      get readBallotsFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FirestoreStatesCopyWith<_FirestoreStates> get copyWith =>
      throw _privateConstructorUsedError;
}

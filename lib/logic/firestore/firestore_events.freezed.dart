// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'firestore_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FirestoreEventsTearOff {
  const _$FirestoreEventsTearOff();

  ReadUserData readUserData() {
    return const ReadUserData();
  }

  StoreUserData storeUserData() {
    return const StoreUserData();
  }

  ReadBallots readBallots() {
    return const ReadBallots();
  }

  StoreBallots storeBallots() {
    return const StoreBallots();
  }
}

/// @nodoc
const $FirestoreEvents = _$FirestoreEventsTearOff();

/// @nodoc
mixin _$FirestoreEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readUserData,
    required TResult Function() storeUserData,
    required TResult Function() readBallots,
    required TResult Function() storeBallots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readUserData,
    TResult Function()? storeUserData,
    TResult Function()? readBallots,
    TResult Function()? storeBallots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadUserData value) readUserData,
    required TResult Function(StoreUserData value) storeUserData,
    required TResult Function(ReadBallots value) readBallots,
    required TResult Function(StoreBallots value) storeBallots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadUserData value)? readUserData,
    TResult Function(StoreUserData value)? storeUserData,
    TResult Function(ReadBallots value)? readBallots,
    TResult Function(StoreBallots value)? storeBallots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreEventsCopyWith<$Res> {
  factory $FirestoreEventsCopyWith(
          FirestoreEvents value, $Res Function(FirestoreEvents) then) =
      _$FirestoreEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirestoreEventsCopyWithImpl<$Res>
    implements $FirestoreEventsCopyWith<$Res> {
  _$FirestoreEventsCopyWithImpl(this._value, this._then);

  final FirestoreEvents _value;
  // ignore: unused_field
  final $Res Function(FirestoreEvents) _then;
}

/// @nodoc
abstract class $ReadUserDataCopyWith<$Res> {
  factory $ReadUserDataCopyWith(
          ReadUserData value, $Res Function(ReadUserData) then) =
      _$ReadUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadUserDataCopyWithImpl<$Res>
    extends _$FirestoreEventsCopyWithImpl<$Res>
    implements $ReadUserDataCopyWith<$Res> {
  _$ReadUserDataCopyWithImpl(
      ReadUserData _value, $Res Function(ReadUserData) _then)
      : super(_value, (v) => _then(v as ReadUserData));

  @override
  ReadUserData get _value => super._value as ReadUserData;
}

/// @nodoc

class _$ReadUserData implements ReadUserData {
  const _$ReadUserData();

  @override
  String toString() {
    return 'FirestoreEvents.readUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReadUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readUserData,
    required TResult Function() storeUserData,
    required TResult Function() readBallots,
    required TResult Function() storeBallots,
  }) {
    return readUserData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readUserData,
    TResult Function()? storeUserData,
    TResult Function()? readBallots,
    TResult Function()? storeBallots,
    required TResult orElse(),
  }) {
    if (readUserData != null) {
      return readUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadUserData value) readUserData,
    required TResult Function(StoreUserData value) storeUserData,
    required TResult Function(ReadBallots value) readBallots,
    required TResult Function(StoreBallots value) storeBallots,
  }) {
    return readUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadUserData value)? readUserData,
    TResult Function(StoreUserData value)? storeUserData,
    TResult Function(ReadBallots value)? readBallots,
    TResult Function(StoreBallots value)? storeBallots,
    required TResult orElse(),
  }) {
    if (readUserData != null) {
      return readUserData(this);
    }
    return orElse();
  }
}

abstract class ReadUserData implements FirestoreEvents {
  const factory ReadUserData() = _$ReadUserData;
}

/// @nodoc
abstract class $StoreUserDataCopyWith<$Res> {
  factory $StoreUserDataCopyWith(
          StoreUserData value, $Res Function(StoreUserData) then) =
      _$StoreUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreUserDataCopyWithImpl<$Res>
    extends _$FirestoreEventsCopyWithImpl<$Res>
    implements $StoreUserDataCopyWith<$Res> {
  _$StoreUserDataCopyWithImpl(
      StoreUserData _value, $Res Function(StoreUserData) _then)
      : super(_value, (v) => _then(v as StoreUserData));

  @override
  StoreUserData get _value => super._value as StoreUserData;
}

/// @nodoc

class _$StoreUserData implements StoreUserData {
  const _$StoreUserData();

  @override
  String toString() {
    return 'FirestoreEvents.storeUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StoreUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readUserData,
    required TResult Function() storeUserData,
    required TResult Function() readBallots,
    required TResult Function() storeBallots,
  }) {
    return storeUserData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readUserData,
    TResult Function()? storeUserData,
    TResult Function()? readBallots,
    TResult Function()? storeBallots,
    required TResult orElse(),
  }) {
    if (storeUserData != null) {
      return storeUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadUserData value) readUserData,
    required TResult Function(StoreUserData value) storeUserData,
    required TResult Function(ReadBallots value) readBallots,
    required TResult Function(StoreBallots value) storeBallots,
  }) {
    return storeUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadUserData value)? readUserData,
    TResult Function(StoreUserData value)? storeUserData,
    TResult Function(ReadBallots value)? readBallots,
    TResult Function(StoreBallots value)? storeBallots,
    required TResult orElse(),
  }) {
    if (storeUserData != null) {
      return storeUserData(this);
    }
    return orElse();
  }
}

abstract class StoreUserData implements FirestoreEvents {
  const factory StoreUserData() = _$StoreUserData;
}

/// @nodoc
abstract class $ReadBallotsCopyWith<$Res> {
  factory $ReadBallotsCopyWith(
          ReadBallots value, $Res Function(ReadBallots) then) =
      _$ReadBallotsCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadBallotsCopyWithImpl<$Res>
    extends _$FirestoreEventsCopyWithImpl<$Res>
    implements $ReadBallotsCopyWith<$Res> {
  _$ReadBallotsCopyWithImpl(
      ReadBallots _value, $Res Function(ReadBallots) _then)
      : super(_value, (v) => _then(v as ReadBallots));

  @override
  ReadBallots get _value => super._value as ReadBallots;
}

/// @nodoc

class _$ReadBallots implements ReadBallots {
  const _$ReadBallots();

  @override
  String toString() {
    return 'FirestoreEvents.readBallots()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReadBallots);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readUserData,
    required TResult Function() storeUserData,
    required TResult Function() readBallots,
    required TResult Function() storeBallots,
  }) {
    return readBallots();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readUserData,
    TResult Function()? storeUserData,
    TResult Function()? readBallots,
    TResult Function()? storeBallots,
    required TResult orElse(),
  }) {
    if (readBallots != null) {
      return readBallots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadUserData value) readUserData,
    required TResult Function(StoreUserData value) storeUserData,
    required TResult Function(ReadBallots value) readBallots,
    required TResult Function(StoreBallots value) storeBallots,
  }) {
    return readBallots(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadUserData value)? readUserData,
    TResult Function(StoreUserData value)? storeUserData,
    TResult Function(ReadBallots value)? readBallots,
    TResult Function(StoreBallots value)? storeBallots,
    required TResult orElse(),
  }) {
    if (readBallots != null) {
      return readBallots(this);
    }
    return orElse();
  }
}

abstract class ReadBallots implements FirestoreEvents {
  const factory ReadBallots() = _$ReadBallots;
}

/// @nodoc
abstract class $StoreBallotsCopyWith<$Res> {
  factory $StoreBallotsCopyWith(
          StoreBallots value, $Res Function(StoreBallots) then) =
      _$StoreBallotsCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreBallotsCopyWithImpl<$Res>
    extends _$FirestoreEventsCopyWithImpl<$Res>
    implements $StoreBallotsCopyWith<$Res> {
  _$StoreBallotsCopyWithImpl(
      StoreBallots _value, $Res Function(StoreBallots) _then)
      : super(_value, (v) => _then(v as StoreBallots));

  @override
  StoreBallots get _value => super._value as StoreBallots;
}

/// @nodoc

class _$StoreBallots implements StoreBallots {
  const _$StoreBallots();

  @override
  String toString() {
    return 'FirestoreEvents.storeBallots()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StoreBallots);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readUserData,
    required TResult Function() storeUserData,
    required TResult Function() readBallots,
    required TResult Function() storeBallots,
  }) {
    return storeBallots();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readUserData,
    TResult Function()? storeUserData,
    TResult Function()? readBallots,
    TResult Function()? storeBallots,
    required TResult orElse(),
  }) {
    if (storeBallots != null) {
      return storeBallots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadUserData value) readUserData,
    required TResult Function(StoreUserData value) storeUserData,
    required TResult Function(ReadBallots value) readBallots,
    required TResult Function(StoreBallots value) storeBallots,
  }) {
    return storeBallots(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadUserData value)? readUserData,
    TResult Function(StoreUserData value)? storeUserData,
    TResult Function(ReadBallots value)? readBallots,
    TResult Function(StoreBallots value)? storeBallots,
    required TResult orElse(),
  }) {
    if (storeBallots != null) {
      return storeBallots(this);
    }
    return orElse();
  }
}

abstract class StoreBallots implements FirestoreEvents {
  const factory StoreBallots() = _$StoreBallots;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'candidate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CandidateTearOff {
  const _$CandidateTearOff();

  _Candidate call({required String name}) {
    return _Candidate(
      name: name,
    );
  }
}

/// @nodoc
const $Candidate = _$CandidateTearOff();

/// @nodoc
mixin _$Candidate {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CandidateCopyWith<Candidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateCopyWith<$Res> {
  factory $CandidateCopyWith(Candidate value, $Res Function(Candidate) then) =
      _$CandidateCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$CandidateCopyWithImpl<$Res> implements $CandidateCopyWith<$Res> {
  _$CandidateCopyWithImpl(this._value, this._then);

  final Candidate _value;
  // ignore: unused_field
  final $Res Function(Candidate) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CandidateCopyWith<$Res> implements $CandidateCopyWith<$Res> {
  factory _$CandidateCopyWith(
          _Candidate value, $Res Function(_Candidate) then) =
      __$CandidateCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$CandidateCopyWithImpl<$Res> extends _$CandidateCopyWithImpl<$Res>
    implements _$CandidateCopyWith<$Res> {
  __$CandidateCopyWithImpl(_Candidate _value, $Res Function(_Candidate) _then)
      : super(_value, (v) => _then(v as _Candidate));

  @override
  _Candidate get _value => super._value as _Candidate;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_Candidate(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Candidate extends _Candidate {
  const _$_Candidate({required this.name}) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'Candidate(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Candidate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CandidateCopyWith<_Candidate> get copyWith =>
      __$CandidateCopyWithImpl<_Candidate>(this, _$identity);
}

abstract class _Candidate extends Candidate {
  const factory _Candidate({required String name}) = _$_Candidate;
  const _Candidate._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CandidateCopyWith<_Candidate> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'voter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VoterTearOff {
  const _$VoterTearOff();

  _Voter call({required Address address, required Id votedTowards}) {
    return _Voter(
      address: address,
      votedTowards: votedTowards,
    );
  }
}

/// @nodoc
const $Voter = _$VoterTearOff();

/// @nodoc
mixin _$Voter {
  Address get address => throw _privateConstructorUsedError;
  Id get votedTowards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoterCopyWith<Voter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoterCopyWith<$Res> {
  factory $VoterCopyWith(Voter value, $Res Function(Voter) then) =
      _$VoterCopyWithImpl<$Res>;
  $Res call({Address address, Id votedTowards});
}

/// @nodoc
class _$VoterCopyWithImpl<$Res> implements $VoterCopyWith<$Res> {
  _$VoterCopyWithImpl(this._value, this._then);

  final Voter _value;
  // ignore: unused_field
  final $Res Function(Voter) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? votedTowards = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      votedTowards: votedTowards == freezed
          ? _value.votedTowards
          : votedTowards // ignore: cast_nullable_to_non_nullable
              as Id,
    ));
  }
}

/// @nodoc
abstract class _$VoterCopyWith<$Res> implements $VoterCopyWith<$Res> {
  factory _$VoterCopyWith(_Voter value, $Res Function(_Voter) then) =
      __$VoterCopyWithImpl<$Res>;
  @override
  $Res call({Address address, Id votedTowards});
}

/// @nodoc
class __$VoterCopyWithImpl<$Res> extends _$VoterCopyWithImpl<$Res>
    implements _$VoterCopyWith<$Res> {
  __$VoterCopyWithImpl(_Voter _value, $Res Function(_Voter) _then)
      : super(_value, (v) => _then(v as _Voter));

  @override
  _Voter get _value => super._value as _Voter;

  @override
  $Res call({
    Object? address = freezed,
    Object? votedTowards = freezed,
  }) {
    return _then(_Voter(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      votedTowards: votedTowards == freezed
          ? _value.votedTowards
          : votedTowards // ignore: cast_nullable_to_non_nullable
              as Id,
    ));
  }
}

/// @nodoc

class _$_Voter extends _Voter {
  const _$_Voter({required this.address, required this.votedTowards})
      : super._();

  @override
  final Address address;
  @override
  final Id votedTowards;

  @override
  String toString() {
    return 'Voter(address: $address, votedTowards: $votedTowards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Voter &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.votedTowards, votedTowards) ||
                const DeepCollectionEquality()
                    .equals(other.votedTowards, votedTowards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(votedTowards);

  @JsonKey(ignore: true)
  @override
  _$VoterCopyWith<_Voter> get copyWith =>
      __$VoterCopyWithImpl<_Voter>(this, _$identity);
}

abstract class _Voter extends Voter {
  const factory _Voter({required Address address, required Id votedTowards}) =
      _$_Voter;
  const _Voter._() : super._();

  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  Id get votedTowards => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VoterCopyWith<_Voter> get copyWith => throw _privateConstructorUsedError;
}

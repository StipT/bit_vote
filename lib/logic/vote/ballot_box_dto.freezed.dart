// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ballot_box_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BallotBoxDtoTearOff {
  const _$BallotBoxDtoTearOff();

  _BallotBoxDto call(
      {required Id id,
      required Address adminAddress,
      required Topic topic,
      required String electionState,
      required BigInt endTime,
      required List<String> candidates,
      required List<BigInt> votes}) {
    return _BallotBoxDto(
      id: id,
      adminAddress: adminAddress,
      topic: topic,
      electionState: electionState,
      endTime: endTime,
      candidates: candidates,
      votes: votes,
    );
  }
}

/// @nodoc
const $BallotBoxDto = _$BallotBoxDtoTearOff();

/// @nodoc
mixin _$BallotBoxDto {
  Id get id => throw _privateConstructorUsedError;
  Address get adminAddress => throw _privateConstructorUsedError;
  Topic get topic => throw _privateConstructorUsedError;
  String get electionState => throw _privateConstructorUsedError;
  BigInt get endTime => throw _privateConstructorUsedError;
  List<String> get candidates => throw _privateConstructorUsedError;
  List<BigInt> get votes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BallotBoxDtoCopyWith<BallotBoxDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BallotBoxDtoCopyWith<$Res> {
  factory $BallotBoxDtoCopyWith(
          BallotBoxDto value, $Res Function(BallotBoxDto) then) =
      _$BallotBoxDtoCopyWithImpl<$Res>;
  $Res call(
      {Id id,
      Address adminAddress,
      Topic topic,
      String electionState,
      BigInt endTime,
      List<String> candidates,
      List<BigInt> votes});
}

/// @nodoc
class _$BallotBoxDtoCopyWithImpl<$Res> implements $BallotBoxDtoCopyWith<$Res> {
  _$BallotBoxDtoCopyWithImpl(this._value, this._then);

  final BallotBoxDto _value;
  // ignore: unused_field
  final $Res Function(BallotBoxDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? adminAddress = freezed,
    Object? topic = freezed,
    Object? electionState = freezed,
    Object? endTime = freezed,
    Object? candidates = freezed,
    Object? votes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      adminAddress: adminAddress == freezed
          ? _value.adminAddress
          : adminAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
      electionState: electionState == freezed
          ? _value.electionState
          : electionState // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as BigInt,
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as List<BigInt>,
    ));
  }
}

/// @nodoc
abstract class _$BallotBoxDtoCopyWith<$Res>
    implements $BallotBoxDtoCopyWith<$Res> {
  factory _$BallotBoxDtoCopyWith(
          _BallotBoxDto value, $Res Function(_BallotBoxDto) then) =
      __$BallotBoxDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Id id,
      Address adminAddress,
      Topic topic,
      String electionState,
      BigInt endTime,
      List<String> candidates,
      List<BigInt> votes});
}

/// @nodoc
class __$BallotBoxDtoCopyWithImpl<$Res> extends _$BallotBoxDtoCopyWithImpl<$Res>
    implements _$BallotBoxDtoCopyWith<$Res> {
  __$BallotBoxDtoCopyWithImpl(
      _BallotBoxDto _value, $Res Function(_BallotBoxDto) _then)
      : super(_value, (v) => _then(v as _BallotBoxDto));

  @override
  _BallotBoxDto get _value => super._value as _BallotBoxDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? adminAddress = freezed,
    Object? topic = freezed,
    Object? electionState = freezed,
    Object? endTime = freezed,
    Object? candidates = freezed,
    Object? votes = freezed,
  }) {
    return _then(_BallotBoxDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      adminAddress: adminAddress == freezed
          ? _value.adminAddress
          : adminAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
      electionState: electionState == freezed
          ? _value.electionState
          : electionState // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as BigInt,
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as List<BigInt>,
    ));
  }
}

/// @nodoc

class _$_BallotBoxDto implements _BallotBoxDto {
  const _$_BallotBoxDto(
      {required this.id,
      required this.adminAddress,
      required this.topic,
      required this.electionState,
      required this.endTime,
      required this.candidates,
      required this.votes});

  @override
  final Id id;
  @override
  final Address adminAddress;
  @override
  final Topic topic;
  @override
  final String electionState;
  @override
  final BigInt endTime;
  @override
  final List<String> candidates;
  @override
  final List<BigInt> votes;

  @override
  String toString() {
    return 'BallotBoxDto(id: $id, adminAddress: $adminAddress, topic: $topic, electionState: $electionState, endTime: $endTime, candidates: $candidates, votes: $votes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BallotBoxDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.adminAddress, adminAddress) ||
                const DeepCollectionEquality()
                    .equals(other.adminAddress, adminAddress)) &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.electionState, electionState) ||
                const DeepCollectionEquality()
                    .equals(other.electionState, electionState)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.candidates, candidates) ||
                const DeepCollectionEquality()
                    .equals(other.candidates, candidates)) &&
            (identical(other.votes, votes) ||
                const DeepCollectionEquality().equals(other.votes, votes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(adminAddress) ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(electionState) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(candidates) ^
      const DeepCollectionEquality().hash(votes);

  @JsonKey(ignore: true)
  @override
  _$BallotBoxDtoCopyWith<_BallotBoxDto> get copyWith =>
      __$BallotBoxDtoCopyWithImpl<_BallotBoxDto>(this, _$identity);
}

abstract class _BallotBoxDto implements BallotBoxDto {
  const factory _BallotBoxDto(
      {required Id id,
      required Address adminAddress,
      required Topic topic,
      required String electionState,
      required BigInt endTime,
      required List<String> candidates,
      required List<BigInt> votes}) = _$_BallotBoxDto;

  @override
  Id get id => throw _privateConstructorUsedError;
  @override
  Address get adminAddress => throw _privateConstructorUsedError;
  @override
  Topic get topic => throw _privateConstructorUsedError;
  @override
  String get electionState => throw _privateConstructorUsedError;
  @override
  BigInt get endTime => throw _privateConstructorUsedError;
  @override
  List<String> get candidates => throw _privateConstructorUsedError;
  @override
  List<BigInt> get votes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BallotBoxDtoCopyWith<_BallotBoxDto> get copyWith =>
      throw _privateConstructorUsedError;
}

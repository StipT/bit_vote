// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ballot_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BallotBoxTearOff {
  const _$BallotBoxTearOff();

  _BallotBox call(
      {required Id id,
      required Address adminAddress,
      required Topic topic,
      required List<Candidate> candidates,
      required List<Voter> voters,
      required ElectionState electionState,
      required String endTime}) {
    return _BallotBox(
      id: id,
      adminAddress: adminAddress,
      topic: topic,
      candidates: candidates,
      voters: voters,
      electionState: electionState,
      endTime: endTime,
    );
  }
}

/// @nodoc
const $BallotBox = _$BallotBoxTearOff();

/// @nodoc
mixin _$BallotBox {
  Id get id => throw _privateConstructorUsedError;
  Address get adminAddress => throw _privateConstructorUsedError;
  Topic get topic => throw _privateConstructorUsedError;
  List<Candidate> get candidates => throw _privateConstructorUsedError;
  List<Voter> get voters => throw _privateConstructorUsedError;
  ElectionState get electionState => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BallotBoxCopyWith<BallotBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BallotBoxCopyWith<$Res> {
  factory $BallotBoxCopyWith(BallotBox value, $Res Function(BallotBox) then) =
      _$BallotBoxCopyWithImpl<$Res>;
  $Res call(
      {Id id,
      Address adminAddress,
      Topic topic,
      List<Candidate> candidates,
      List<Voter> voters,
      ElectionState electionState,
      String endTime});
}

/// @nodoc
class _$BallotBoxCopyWithImpl<$Res> implements $BallotBoxCopyWith<$Res> {
  _$BallotBoxCopyWithImpl(this._value, this._then);

  final BallotBox _value;
  // ignore: unused_field
  final $Res Function(BallotBox) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? adminAddress = freezed,
    Object? topic = freezed,
    Object? candidates = freezed,
    Object? voters = freezed,
    Object? electionState = freezed,
    Object? endTime = freezed,
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
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>,
      voters: voters == freezed
          ? _value.voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<Voter>,
      electionState: electionState == freezed
          ? _value.electionState
          : electionState // ignore: cast_nullable_to_non_nullable
              as ElectionState,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BallotBoxCopyWith<$Res> implements $BallotBoxCopyWith<$Res> {
  factory _$BallotBoxCopyWith(
          _BallotBox value, $Res Function(_BallotBox) then) =
      __$BallotBoxCopyWithImpl<$Res>;
  @override
  $Res call(
      {Id id,
      Address adminAddress,
      Topic topic,
      List<Candidate> candidates,
      List<Voter> voters,
      ElectionState electionState,
      String endTime});
}

/// @nodoc
class __$BallotBoxCopyWithImpl<$Res> extends _$BallotBoxCopyWithImpl<$Res>
    implements _$BallotBoxCopyWith<$Res> {
  __$BallotBoxCopyWithImpl(_BallotBox _value, $Res Function(_BallotBox) _then)
      : super(_value, (v) => _then(v as _BallotBox));

  @override
  _BallotBox get _value => super._value as _BallotBox;

  @override
  $Res call({
    Object? id = freezed,
    Object? adminAddress = freezed,
    Object? topic = freezed,
    Object? candidates = freezed,
    Object? voters = freezed,
    Object? electionState = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_BallotBox(
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
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>,
      voters: voters == freezed
          ? _value.voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<Voter>,
      electionState: electionState == freezed
          ? _value.electionState
          : electionState // ignore: cast_nullable_to_non_nullable
              as ElectionState,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BallotBox extends _BallotBox {
  const _$_BallotBox(
      {required this.id,
      required this.adminAddress,
      required this.topic,
      required this.candidates,
      required this.voters,
      required this.electionState,
      required this.endTime})
      : super._();

  @override
  final Id id;
  @override
  final Address adminAddress;
  @override
  final Topic topic;
  @override
  final List<Candidate> candidates;
  @override
  final List<Voter> voters;
  @override
  final ElectionState electionState;
  @override
  final String endTime;

  @override
  String toString() {
    return 'BallotBox(id: $id, adminAddress: $adminAddress, topic: $topic, candidates: $candidates, voters: $voters, electionState: $electionState, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BallotBox &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.adminAddress, adminAddress) ||
                const DeepCollectionEquality()
                    .equals(other.adminAddress, adminAddress)) &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.candidates, candidates) ||
                const DeepCollectionEquality()
                    .equals(other.candidates, candidates)) &&
            (identical(other.voters, voters) ||
                const DeepCollectionEquality().equals(other.voters, voters)) &&
            (identical(other.electionState, electionState) ||
                const DeepCollectionEquality()
                    .equals(other.electionState, electionState)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(other.endTime, endTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(adminAddress) ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(candidates) ^
      const DeepCollectionEquality().hash(voters) ^
      const DeepCollectionEquality().hash(electionState) ^
      const DeepCollectionEquality().hash(endTime);

  @JsonKey(ignore: true)
  @override
  _$BallotBoxCopyWith<_BallotBox> get copyWith =>
      __$BallotBoxCopyWithImpl<_BallotBox>(this, _$identity);
}

abstract class _BallotBox extends BallotBox {
  const factory _BallotBox(
      {required Id id,
      required Address adminAddress,
      required Topic topic,
      required List<Candidate> candidates,
      required List<Voter> voters,
      required ElectionState electionState,
      required String endTime}) = _$_BallotBox;
  const _BallotBox._() : super._();

  @override
  Id get id => throw _privateConstructorUsedError;
  @override
  Address get adminAddress => throw _privateConstructorUsedError;
  @override
  Topic get topic => throw _privateConstructorUsedError;
  @override
  List<Candidate> get candidates => throw _privateConstructorUsedError;
  @override
  List<Voter> get voters => throw _privateConstructorUsedError;
  @override
  ElectionState get electionState => throw _privateConstructorUsedError;
  @override
  String get endTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BallotBoxCopyWith<_BallotBox> get copyWith =>
      throw _privateConstructorUsedError;
}

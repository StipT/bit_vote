// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_ballot_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateBallotStatesTearOff {
  const _$CreateBallotStatesTearOff();

  _CreateBallotStates call(
      {required Id id,
      required Address adminAddress,
      required Topic topic,
      required List<Candidate> candidates,
      required List<Voter> voters,
      required ElectionState electionState,
      required BigInt duration,
      required bool isSubmitting,
      required bool showError,
      required String status,
      required int selectedCandidate,
      required Option<Either<BlockchainFailures, Unit>>
          transactionFailureOrSuccess}) {
    return _CreateBallotStates(
      id: id,
      adminAddress: adminAddress,
      topic: topic,
      candidates: candidates,
      voters: voters,
      electionState: electionState,
      duration: duration,
      isSubmitting: isSubmitting,
      showError: showError,
      status: status,
      selectedCandidate: selectedCandidate,
      transactionFailureOrSuccess: transactionFailureOrSuccess,
    );
  }
}

/// @nodoc
const $CreateBallotStates = _$CreateBallotStatesTearOff();

/// @nodoc
mixin _$CreateBallotStates {
  Id get id => throw _privateConstructorUsedError;
  Address get adminAddress => throw _privateConstructorUsedError;
  Topic get topic => throw _privateConstructorUsedError;
  List<Candidate> get candidates => throw _privateConstructorUsedError;
  List<Voter> get voters => throw _privateConstructorUsedError;
  ElectionState get electionState => throw _privateConstructorUsedError;
  BigInt get duration => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get selectedCandidate => throw _privateConstructorUsedError;
  Option<Either<BlockchainFailures, Unit>> get transactionFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateBallotStatesCopyWith<CreateBallotStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBallotStatesCopyWith<$Res> {
  factory $CreateBallotStatesCopyWith(
          CreateBallotStates value, $Res Function(CreateBallotStates) then) =
      _$CreateBallotStatesCopyWithImpl<$Res>;
  $Res call(
      {Id id,
      Address adminAddress,
      Topic topic,
      List<Candidate> candidates,
      List<Voter> voters,
      ElectionState electionState,
      BigInt duration,
      bool isSubmitting,
      bool showError,
      String status,
      int selectedCandidate,
      Option<Either<BlockchainFailures, Unit>> transactionFailureOrSuccess});
}

/// @nodoc
class _$CreateBallotStatesCopyWithImpl<$Res>
    implements $CreateBallotStatesCopyWith<$Res> {
  _$CreateBallotStatesCopyWithImpl(this._value, this._then);

  final CreateBallotStates _value;
  // ignore: unused_field
  final $Res Function(CreateBallotStates) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? adminAddress = freezed,
    Object? topic = freezed,
    Object? candidates = freezed,
    Object? voters = freezed,
    Object? electionState = freezed,
    Object? duration = freezed,
    Object? isSubmitting = freezed,
    Object? showError = freezed,
    Object? status = freezed,
    Object? selectedCandidate = freezed,
    Object? transactionFailureOrSuccess = freezed,
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
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as BigInt,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCandidate: selectedCandidate == freezed
          ? _value.selectedCandidate
          : selectedCandidate // ignore: cast_nullable_to_non_nullable
              as int,
      transactionFailureOrSuccess: transactionFailureOrSuccess == freezed
          ? _value.transactionFailureOrSuccess
          : transactionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<BlockchainFailures, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$CreateBallotStatesCopyWith<$Res>
    implements $CreateBallotStatesCopyWith<$Res> {
  factory _$CreateBallotStatesCopyWith(
          _CreateBallotStates value, $Res Function(_CreateBallotStates) then) =
      __$CreateBallotStatesCopyWithImpl<$Res>;
  @override
  $Res call(
      {Id id,
      Address adminAddress,
      Topic topic,
      List<Candidate> candidates,
      List<Voter> voters,
      ElectionState electionState,
      BigInt duration,
      bool isSubmitting,
      bool showError,
      String status,
      int selectedCandidate,
      Option<Either<BlockchainFailures, Unit>> transactionFailureOrSuccess});
}

/// @nodoc
class __$CreateBallotStatesCopyWithImpl<$Res>
    extends _$CreateBallotStatesCopyWithImpl<$Res>
    implements _$CreateBallotStatesCopyWith<$Res> {
  __$CreateBallotStatesCopyWithImpl(
      _CreateBallotStates _value, $Res Function(_CreateBallotStates) _then)
      : super(_value, (v) => _then(v as _CreateBallotStates));

  @override
  _CreateBallotStates get _value => super._value as _CreateBallotStates;

  @override
  $Res call({
    Object? id = freezed,
    Object? adminAddress = freezed,
    Object? topic = freezed,
    Object? candidates = freezed,
    Object? voters = freezed,
    Object? electionState = freezed,
    Object? duration = freezed,
    Object? isSubmitting = freezed,
    Object? showError = freezed,
    Object? status = freezed,
    Object? selectedCandidate = freezed,
    Object? transactionFailureOrSuccess = freezed,
  }) {
    return _then(_CreateBallotStates(
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
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as BigInt,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCandidate: selectedCandidate == freezed
          ? _value.selectedCandidate
          : selectedCandidate // ignore: cast_nullable_to_non_nullable
              as int,
      transactionFailureOrSuccess: transactionFailureOrSuccess == freezed
          ? _value.transactionFailureOrSuccess
          : transactionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<BlockchainFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreateBallotStates implements _CreateBallotStates {
  const _$_CreateBallotStates(
      {required this.id,
      required this.adminAddress,
      required this.topic,
      required this.candidates,
      required this.voters,
      required this.electionState,
      required this.duration,
      required this.isSubmitting,
      required this.showError,
      required this.status,
      required this.selectedCandidate,
      required this.transactionFailureOrSuccess});

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
  final BigInt duration;
  @override
  final bool isSubmitting;
  @override
  final bool showError;
  @override
  final String status;
  @override
  final int selectedCandidate;
  @override
  final Option<Either<BlockchainFailures, Unit>> transactionFailureOrSuccess;

  @override
  String toString() {
    return 'CreateBallotStates(id: $id, adminAddress: $adminAddress, topic: $topic, candidates: $candidates, voters: $voters, electionState: $electionState, duration: $duration, isSubmitting: $isSubmitting, showError: $showError, status: $status, selectedCandidate: $selectedCandidate, transactionFailureOrSuccess: $transactionFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateBallotStates &&
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
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.selectedCandidate, selectedCandidate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCandidate, selectedCandidate)) &&
            (identical(other.transactionFailureOrSuccess,
                    transactionFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.transactionFailureOrSuccess,
                    transactionFailureOrSuccess)));
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
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(selectedCandidate) ^
      const DeepCollectionEquality().hash(transactionFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$CreateBallotStatesCopyWith<_CreateBallotStates> get copyWith =>
      __$CreateBallotStatesCopyWithImpl<_CreateBallotStates>(this, _$identity);
}

abstract class _CreateBallotStates implements CreateBallotStates {
  const factory _CreateBallotStates(
      {required Id id,
      required Address adminAddress,
      required Topic topic,
      required List<Candidate> candidates,
      required List<Voter> voters,
      required ElectionState electionState,
      required BigInt duration,
      required bool isSubmitting,
      required bool showError,
      required String status,
      required int selectedCandidate,
      required Option<Either<BlockchainFailures, Unit>>
          transactionFailureOrSuccess}) = _$_CreateBallotStates;

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
  BigInt get duration => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  int get selectedCandidate => throw _privateConstructorUsedError;
  @override
  Option<Either<BlockchainFailures, Unit>> get transactionFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateBallotStatesCopyWith<_CreateBallotStates> get copyWith =>
      throw _privateConstructorUsedError;
}

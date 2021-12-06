import 'package:bit_vote/repository/firebase_authentication.dart';
import 'package:bit_vote/repository/firestore_service.dart';
import 'package:bit_vote/repository/web3_service.dart';
import 'package:bit_vote/shared/string_util.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'domain/blockchain/blockchain_failures.dart';
import 'domain/blockchain/blockchain_value_objects.dart';
import 'domain/core/errors.dart';
import 'logic/auth/auth_state_controller.dart';
import 'logic/auth/auth_states.dart';
import 'logic/create_ballot_box/create_ballot_state_controller.dart';
import 'logic/create_ballot_box/create_ballot_states.dart';
import 'logic/firestore/firestore_state_controller.dart';
import 'logic/firestore/firestore_states.dart';
import 'logic/vote/ballot_box_dto.dart';
import 'logic/vote/vote_state_controller.dart';
import 'logic/vote/vote_states.dart';

final firestoreProvider =
    StateNotifierProvider<FirestoreStateController, FirestoreStates>((ref) {
  return FirestoreStateController(
    FirestoreService(),
  );
});

final createBallotProvider = StateNotifierProvider.autoDispose<
    CreateBallotStateController, CreateBallotStates>((ref) {
  final privateKey = ref
      .watch(firestoreProvider)
      .userData
      .privateKey
      .valueObject!
      .fold((l) => throw UnExpectedValueError(l), (r) => r);

  final ethAddress = ref
      .watch(firestoreProvider)
      .userData
      .address
      .valueObject!
      .fold((l) => throw UnExpectedValueError(l), (r) => r);
  return CreateBallotStateController(Web3Service(privateKey, ethAddress));
});

final voteProvider =
    StateNotifierProvider.family.autoDispose<VoteStateController, VoteStates, Id>((ref, id) {
  final privateKey = ref
      .watch(firestoreProvider)
      .userData
      .privateKey
      .valueObject!
      .fold((l) => throw UnExpectedValueError(l), (r) => r);

  final ethAddress = ref
      .watch(firestoreProvider)
      .userData
      .address
      .valueObject!
      .fold((l) => throw UnExpectedValueError(l), (r) => r);
  return VoteStateController(Web3Service(privateKey, ethAddress), id);
});

final recentBallotsProvider = FutureProvider.autoDispose((ref) {
  final privateKey = ref
      .watch(firestoreProvider)
      .userData
      .privateKey
      .valueObject!
      .fold((l) => throw UnExpectedValueError(l), (r) => r);

  final ethAddress = ref
      .watch(firestoreProvider)
      .userData
      .address
      .valueObject!
      .fold((l) => throw UnExpectedValueError(l), (r) => r);
  FirestoreService _firestoreService = FirestoreService();

  return _firestoreService.readBallots().then((value) {
    final List<Id> boxBallotsIds = value.fold((failure) {
      throw ServerError();
    },
        (success) => success.map((e) => Id(id: e)).toList());
    final web3Service = Web3Service(privateKey, ethAddress);
    return web3Service.showBallotBoxes(boxIds: boxBallotsIds);
  });
});

final resultProvider = FutureProvider.family
    .autoDispose<Either<BlockchainFailures, BallotBoxDto>, Id>((ref, id) {
  final privateKey = ref
      .watch(firestoreProvider)
      .userData
      .privateKey
      .valueObject!
      .fold((l) => throw UnExpectedValueError(l), (r) => r);

  final ethAddress = ref
      .watch(firestoreProvider)
      .userData
      .address
      .valueObject!
      .fold((l) => throw UnExpectedValueError(l), (r) => r);
  final web3Service = Web3Service(privateKey, ethAddress);
  return web3Service.showBallotBox(boxId: id);
});

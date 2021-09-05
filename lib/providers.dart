import 'package:bit_vote/logic/recent_ballots/recent_ballots_state_controller.dart';
import 'package:bit_vote/repository/firebase_authentication.dart';
import 'package:bit_vote/repository/firestore_service.dart';
import 'package:bit_vote/repository/web3_service.dart';
import 'package:bit_vote/ui/election_screen/election_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'domain/core/errors.dart';
import 'logic/auth/auth_state_controller.dart';
import 'logic/auth/auth_states.dart';
import 'logic/blockchain/create_ballot_state_controller.dart';
import 'logic/blockchain/create_ballot_states.dart';
import 'logic/firestore/firestore_state_controller.dart';
import 'logic/firestore/firestore_states.dart';
import 'logic/recent_ballots/recent_ballots_states.dart';
import 'logic/vote/vote_state_controller.dart';
import 'logic/vote/vote_states.dart';

final authProvider =
    StateNotifierProvider.autoDispose<AuthStateController, AuthStates>((ref) {
  final firebaseAuth = FirebaseAuth.instance;
  final firebaseAuthService = FirebaseAuthentication(firebaseAuth);
  return AuthStateController(firebaseAuthService);
});

final firestoreProvider = StateNotifierProvider<
    FirestoreStateController, FirestoreStates>((ref) {
  return FirestoreStateController(
    FirestoreService(FirebaseFirestore.instance),
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
    StateNotifierProvider.autoDispose<VoteStateController, VoteStates>((ref) {
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
  return VoteStateController(Web3Service(privateKey, ethAddress));
});

final recentBallotsProvider = StateNotifierProvider.autoDispose<
    RecentBallotsStateController, RecentBallotsStates>((ref) {
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
  return RecentBallotsStateController(Web3Service(privateKey, ethAddress));
});

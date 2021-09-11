import 'package:bit_vote/domain/firestore/firestore_failures.dart';
import 'package:bit_vote/domain/firestore/i_firebase_firestore.dart';
import 'package:bit_vote/domain/firestore/user_data.dart';
import 'package:bit_vote/logic/firestore/firestore_events.dart';
import 'package:bit_vote/logic/firestore/firestore_states.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirestoreStateController extends StateNotifier<FirestoreStates> {
  FirestoreStateController(this._firestoreService)
      : super(FirestoreStates.initial());

  final IFirestoreService _firestoreService;

  Future mapEventsToStates(FirestoreEvents events) async {
    return events.map(
      readUserData: (value) async {
        await _readUserId(
          _firestoreService.readUserData,
        );
      },
      storeUserData: (value) async {
        await _storeUserId(
          _firestoreService.storeUserData,
        );
      },
      readBallots: (value) async {
/*        await _readBallots(
          _firestoreService.readBallots(),
        );*/
      },
      storeBallots: (value) async {
/*        await _storeBallot(
          _firestoreService.storeBallot(ballotBoxId: ),
        );*/
      },
    );
  }

  Future _storeUserId(
    Future<Either<FirestoreFailures, UserData>> Function(
            {required UserData userData})
        forwardCall,
  ) async {
    Either<FirestoreFailures, UserData>? failureOrSuccess;
    print('U storeUserId');
    state = state.copyWith(
      isSubmitting: true,
      requestFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardCall(
      userData: state.userData,
    );

    state = state.copyWith(
      isSubmitting: false,
      showError: true,
      requestFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Future _readUserId(
    Future<Either<FirestoreFailures, UserData>> Function() forwardCall,
  ) async {
    print('U readUserId');
    Either<FirestoreFailures, UserData>? failureOrSuccess;
    state = state.copyWith(
      isSubmitting: true,
      requestFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardCall();

    UserData userData =
        failureOrSuccess.fold((l) => throw ServerError(), (r) => r);
    state = state.copyWith(
      userData: userData,
      isSubmitting: false,
      showError: true,
      requestFailureOrSuccess: optionOf(failureOrSuccess),
    );
    print('STATE userData: ${userData.toString()}');
  }

  Future _storeBallot(
      Future<Either<FirestoreFailures, Unit>> Function(
              {required String ballotBoxId})
          forwardCall,
      String ballotBoxId) async {
    Either<FirestoreFailures, Unit>? failureOrSuccess;
    state = state.copyWith(
      isSubmitting: true,
      requestFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardCall(
      ballotBoxId: ballotBoxId,
    );

    state = state.copyWith(
      isSubmitting: false,
      showError: true,
      storeBallotFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Future _readBallots(
    Future<Either<FirestoreFailures, List<String>>> Function() forwardCall,
  ) async {
    Either<FirestoreFailures, List<String>>? failureOrSuccess;

    state = state.copyWith(
      isSubmitting: true,
      requestFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardCall();
    List<String> ballots =
        failureOrSuccess.fold((l) => throw ServerError(), (r) => r);

    state = state.copyWith(
      ballots: ballots,
      isSubmitting: false,
      showError: true,
      readBallotsFailureOrSuccess: optionOf(failureOrSuccess),
    );
    print('Ballots: ${ballots.toString()}');
  }
}

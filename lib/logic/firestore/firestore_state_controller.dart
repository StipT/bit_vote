import 'package:bit_vote/domain/core/errors.dart';
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
      storeUserData: (value) async {},
      readBallots: (value) async {
        await _readBallots(
          _firestoreService.readBallots,
        );
      },
      storeBallots: (value) async {
        await _storeBallot(
          _firestoreService.storeBallot,
          value.id.valueObject!
              .fold((l) => throw UnExpectedValueError(l), (r) => r),
        );
      },
    );
  }

  Future _storeUserId(
    Future<Either<FirestoreFailures, UserData>> Function(
            {required UserData userData})
        forwardCall,
  ) async {
    Either<FirestoreFailures, UserData>? failureOrSuccess;
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
    print(failureOrSuccess.toString());
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
    Future<Either<FirestoreFailures, Unit>> Function({required BigInt id})
        forwardCall,
    BigInt id,
  ) async {
    Either<FirestoreFailures, Unit>? failureOrSuccess;
    state = state.copyWith(
      isSubmitting: true,
      requestFailureOrSuccess: none(),
    );
    failureOrSuccess = await forwardCall(id: id);

    state = state.copyWith(
      isSubmitting: false,
      showError: true,
      storeBallotFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Future _readBallots(
    Future<Either<FirestoreFailures, List<BigInt>>> Function() forwardCall,
  ) async {
    Either<FirestoreFailures, List<BigInt>>? failureOrSuccess;

    state = state.copyWith(
      isSubmitting: true,
      requestFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardCall();
    List<BigInt> ballots =
        failureOrSuccess.fold((l) => throw ServerError(), (r) => r);

    state = state.copyWith(
      ballots: ballots,
      isSubmitting: false,
      showError: true,
      readBallotsFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}

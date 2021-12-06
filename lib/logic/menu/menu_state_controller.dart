import 'package:bit_vote/domain/auth/auth_failures.dart';
import 'package:bit_vote/domain/firestore/firestore_failures.dart';
import 'package:bit_vote/logic/menu/menu_events.dart';
import 'package:bit_vote/logic/menu/menu_states.dart';
import 'package:bit_vote/repository/firebase_authentication.dart';
import 'package:bit_vote/repository/firestore_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuStateController extends StateNotifier<MenuStates> {
  MenuStateController(this._authService, this._firestoreService)
      : super(MenuStates.initial());

  final FirestoreService _firestoreService;
  final FirebaseAuthentication _authService;

  Future mapEventsToStates(MenuEvents events) async {
    return events.map(
      initUser: (value) async {
        //_initUser(_firestoreService.readUserData);
      },
      onLogout: (value) async {
        _onLogout(_authService.signOut);
      },
    );
  }

  Future _initUser(
    Future<Either<FirestoreFailures, Unit>> Function() forwardCall,
  ) async {
    Either<FirestoreFailures, Unit>? failureOrSuccess;

    state = state.copyWith(
      isSubmitting: true,
      initFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardCall();
    state = state.copyWith(
      isSubmitting: true,
      showError: true,
      initFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Future _onLogout(
      Future<Either<AuthFailures, Unit>> Function() forwardCall,
  ) async {
    Either<AuthFailures, Unit>? failureOrSuccess;
    state = state.copyWith(
      isSubmitting: true,
      logoutFailureOrSuccess: none(),
    );
    failureOrSuccess = await forwardCall();
    state = state.copyWith(
      isSubmitting: false,
      showError: true,
      logoutFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}

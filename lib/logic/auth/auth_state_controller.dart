import 'package:bit_vote/domain/auth/auth_failures.dart';
import 'package:bit_vote/domain/auth/auth_value_objects.dart';
import 'package:bit_vote/domain/auth/i_firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_events.dart';
import 'auth_states.dart';

class AuthStateController extends StateNotifier<AuthStates> {
  AuthStateController(this._firebaseAuth) : super(AuthStates.initial());

  final IFirebaseAuth _firebaseAuth;

  Future mapEventsToStates(AuthEvents events) async {
    return events.map(
      emailChanged: (value) async {
        state = state.copyWith(
            emailAddress: EmailAddress(
              email: value.email,
            ),
            authFailureOrSuccess: none());
      },
      passwordChanged: (value) async {
        state = state.copyWith(
          password: Password(
            password: value.password,
          ),
          authFailureOrSuccess: none(),
        );
      },
      signUpWithEmailAndPasswordPressed: (value) async {
        await _performAuthAction(
          _firebaseAuth.registerWithEmailAndPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (value) async {
        await _performAuthAction(
          _firebaseAuth.signInWithEmailAndPassword,
        );
      },
    );
  }

  Future _performAuthAction(Future<Either<AuthFailures, Unit>> Function(
      {required EmailAddress emailAddress, required Password password})
        forwardCall,
  ) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    Either<AuthFailures, Unit>? failureOrSuccess;
    if (isEmailValid && isPasswordValid) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );
      failureOrSuccess = await forwardCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    state = state.copyWith(
      isSubmitting: false,
      showError: true,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}

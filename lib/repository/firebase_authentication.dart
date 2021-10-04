import 'package:bit_vote/domain/auth/i_firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../domain/auth/auth_failures.dart';
import '../domain/auth/auth_value_objects.dart';
import '../domain/core/errors.dart';

class FirebaseAuthentication implements IFirebaseAuth {
  FirebaseAuthentication(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword(
      {required EmailAddress? emailAddress,
        required Password? password}) async {
    final emailAddressString = emailAddress!.valueObject!
        .fold((l) => throw UnExpectedValueError(l), id);
    final passwordString =
    password!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailures.emailAlreadyInUse());
      } else {
        return left(const AuthFailures.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> signInWithEmailAndPassword(
      {required EmailAddress? emailAddress,
        required Password? password}) async {
    final emailAddressString = emailAddress!.valueObject!
        .fold((l) => throw UnExpectedValueError(l), id);
    final passwordString =
    password!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailures.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailures.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailures, String>> getSignedInUser() async {
    try {
      return right(_firebaseAuth.currentUser!.uid);
    } on FirebaseAuthException catch (e) {
      return left(const AuthFailures.serverError());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(const AuthFailures.serverError());
    }
  }
}

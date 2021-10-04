import 'package:bit_vote/domain/auth/auth_value_objects.dart';
import 'package:dartz/dartz.dart';

import 'auth_failures.dart';

abstract class IFirebaseAuth {
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword(
      {required EmailAddress? emailAddress, required Password? password});

  Future<Either<AuthFailures, Unit>> signInWithEmailAndPassword(
      {required EmailAddress? emailAddress, required Password? password});

  Future<Either<AuthFailures, String>> getSignedInUser();

  Future<Either<AuthFailures, Unit>> signOut();
}

import 'package:bit_vote/domain/auth/auth_failures.dart';
import 'package:bit_vote/domain/firestore/firestore_failures.dart';
import 'package:bit_vote/domain/firestore/user_data.dart';
import 'package:dartz/dartz.dart';

abstract class IFirestoreService {
  Future<Either<AuthFailures, Unit>> storeUserData();

  Future<Either<FirestoreFailures, UserData>> readUserData();

  Future<Either<FirestoreFailures, Unit>> storeBallot({required BigInt id});

  Future<Either<FirestoreFailures, List<BigInt>>> readBallots();
}

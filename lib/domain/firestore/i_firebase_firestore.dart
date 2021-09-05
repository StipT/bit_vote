import 'package:bit_vote/domain/firestore/firestore_failures.dart';
import 'package:bit_vote/domain/firestore/user_data.dart';
import 'package:dartz/dartz.dart';

abstract class IFirestoreService {
  Future<Either<FirestoreFailures, UserData>> storeUserData(
      {required UserData userData});

  Future<Either<FirestoreFailures, UserData>> readUserData();

  Future<Either<FirestoreFailures, Unit>> storeBallot(
      {required String ballotBoxId});

  Future<Either<FirestoreFailures, List<String>>> readBallots();
}

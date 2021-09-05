import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/firestore/firestore_failures.dart';
import 'package:bit_vote/domain/firestore/firestore_value_objects.dart';
import 'package:bit_vote/domain/firestore/i_firebase_firestore.dart';
import 'package:bit_vote/domain/firestore/user_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService implements IFirestoreService {
  FirestoreService(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<Either<FirestoreFailures, UserData>> readUserData() async {
    try {
      return _firebaseFirestore
          .collection("users")
          .where("userId", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .limit(1)
          .get()
          .then((value) {
        final document = value.docs[0];
        var documentData = document.data();
        print(document.toString());

        print(
            " Read : ${documentData["userId"]}  ${documentData["ethAddress"]}  ${documentData["privateKey"]}");
        document.reference.update(documentData);
        return right(
          UserData(
            address: Address(
              address: documentData["ethAddress"],
            ),
            privateKey: PrivateKey(
              privateKey: documentData["privateKey"],
            ),
          ),
        );
      });
    } catch (e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailures.unauthorized());
      } else {
        return left(const FirestoreFailures.serverError());
      }
    }
  }

  @override
  Future<Either<FirestoreFailures, UserData>> storeUserData(
      {required UserData userData}) async {
    try {
      bool doesUserExists = await _firebaseFirestore
          .collection("users")
          .where("userId", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .limit(1)
          .get()
          .then((value) => value.docs[0].exists);

      print('Does userExists ${doesUserExists}');

      if (!doesUserExists) {
        return _firebaseFirestore
            .collection("users")
            .where("userId", isEqualTo: "")
            .limit(1)
            .get()
            .then((value) {
          final document = value.docs[0];
          var documentData = document.data();
          print(document.toString());

          documentData["userId"] = FirebaseAuth.instance.currentUser!.uid;

          document.reference.update(documentData);
          print(
              " Store : ${documentData["userId"]}  ${documentData["ethAddress"]}  ${documentData["privateKey"]}");
          return right(
            UserData(
              address: Address(
                address: documentData["ethAddress"],
              ),
              privateKey: PrivateKey(
                privateKey: documentData["privateKey"],
              ),
            ),
          );
        });
      } else {
        return left(const FirestoreFailures.serverError());
      }
    } catch (e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailures.unauthorized());
      } else {
        return left(const FirestoreFailures.serverError());
      }
    }
  }

  @override
  Future<Either<FirestoreFailures, Unit>> storeBallot(
      {required String ballotBoxId}) async {
    try {
      _firebaseFirestore
          .collection("ballots")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        'ballots': FieldValue.arrayUnion([ballotBoxId]),
      });
      return right(unit);
    } catch (e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailures.unauthorized());
      } else {
        return left(const FirestoreFailures.serverError());
      }
    }
  }

  @override
  Future<Either<FirestoreFailures, List<String>>> readBallots() async {
    try {
      return _firebaseFirestore
          .collection("ballots")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get()
          .then((value) {
        var documentData = value.data();
        print(documentData.toString());

        return right(documentData!["ballots"]);
      });
    } catch (e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailures.unauthorized());
      } else {
        return left(const FirestoreFailures.serverError());
      }
    }
  }
}

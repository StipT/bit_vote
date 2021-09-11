import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/firestore/firestore_failures.dart';
import 'package:bit_vote/domain/firestore/firestore_value_objects.dart';
import 'package:bit_vote/domain/firestore/i_firebase_firestore.dart';
import 'package:bit_vote/domain/firestore/user_data.dart';
import 'package:bit_vote/shared/string_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService implements IFirestoreService {
  static final FirestoreService _inst = FirestoreService._internal();

  FirestoreService._internal();

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  factory FirestoreService() {
    return _inst;
  }

  factory FirestoreService.instance() {
    return _inst;
  }

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
      {required BigInt id}) async {
    try {
      _firebaseFirestore
          .collection("ballots")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        'ballots': FieldValue.arrayUnion([id.toString()]),
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
  Future<Either<FirestoreFailures, List<BigInt>>> readBallots() async {
    try {
      return _firebaseFirestore
          .collection("ballots")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get()
          .then((value) {
        List<dynamic> documentData = value.data()!["ballots"];
        List<BigInt> bigIntData =
            documentData.map((e) => stringToBigInt(e)).toList();
        print(bigIntData);
        print(bigIntData.runtimeType);

        print(documentData.map((e) => stringToBigInt(e)));
        print(documentData.map((e) => stringToBigInt(e)).toList().runtimeType);
        List<BigInt> list = documentData.map((e) => stringToBigInt(e)).toList();

        return right(bigIntData);
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

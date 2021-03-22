import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Const {
  static var uid = 'eIXyABisqAdefe9UiP1DstuPd382';
  static Future<bool> checkExist() async {
    bool exists = false;
    try {
      await FirebaseFirestore.instance
          .doc("users/${Const.uid}")
          .get()
          .then((doc) {
        if (doc.exists)
          exists = true;
        else
          exists = false;
      });
      return exists;
    } catch (e) {
      return false;
    }
  }
}

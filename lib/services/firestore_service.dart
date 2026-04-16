import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth_app/models/user.dart';

class FirestoreService {
  final _firestore = FirebaseFirestore.instance;

  Future saveUserData({required UserModel user}) async {
    try {
      await _firestore.collection("users").doc(user.uid).set(user.toMap());
    } catch (e) {
      throw Exception('Something went wrong. Please try again.');
    }
  }

  Future<UserModel?> getUserByUID({required String uuid}) async {
    try {
      final userDoc = await _firestore.collection("users").doc(uuid).get();
      if (userDoc.exists) {
        return UserModel.fromMap(userDoc.data() as Map<String, dynamic>);
      }
      return null;
    } catch (e) {
      throw Exception('Something went wrong. Please try again.');
    }
  }
}

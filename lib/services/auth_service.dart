import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_app/models/user.dart';
import 'package:firebase_auth_app/services/firestore_service.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;
  String get currentUserUID => _auth.currentUser!.uid;
  Stream<User?> get authState => _auth.authStateChanges();

  Future signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCreds = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = UserModel(
        uid: userCreds.user!.uid,
        username: username,
        email: email,
      );
      FirestoreService().saveUserData(user: user);
      await _auth.signOut();
    } catch (e) {
      throw Exception('Something went wrong. Please try again.');
    }
  }

  Future logIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw Exception('Something went wrong. Please try again.');
    }
  }

  Future logOut() async {
    await _auth.signOut();
  }
}

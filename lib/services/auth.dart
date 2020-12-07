import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User currentUser();
  Future<User> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthBase{
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  User currentUser() {
    return _firebaseAuth.currentUser;
  }

  @override
  Future<User> signInAnonymously() async {
    final UserCredential user = await _firebaseAuth.signInAnonymously();
    return user.user;
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}

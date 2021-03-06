import 'package:firebase_auth/firebase_auth.dart';

// This AppUser class is used to decouple the extra information given from Firebase Auth
// For example, this AppUser class only contains the Uid
// While a FirebaseAuth.instance.currentUser contains a LOT more information than just the Uid
class AppUser {
  final String Uid;
  AppUser({this.Uid});
}

abstract class AuthBase {
  AppUser currentUser();
  Future<AppUser> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;

  AppUser _userFromFirebase(User user) {
    if (user == null) {
      return null;
    }
    return AppUser(Uid: user.uid);
  }

  @override
  AppUser currentUser() {
    final user = _firebaseAuth.currentUser;
    return _userFromFirebase(user);
  }

  @override
  Future<AppUser> signInAnonymously() async {
    final UserCredential user = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(user.user);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}

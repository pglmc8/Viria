import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ViriaFirebaseUser {
  ViriaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ViriaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ViriaFirebaseUser> viriaFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<ViriaFirebaseUser>((user) => currentUser = ViriaFirebaseUser(user));

import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class VyriaFirebaseUser {
  VyriaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

VyriaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<VyriaFirebaseUser> vyriaFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<VyriaFirebaseUser>((user) => currentUser = VyriaFirebaseUser(user));

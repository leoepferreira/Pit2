import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AppPit2FirebaseUser {
  AppPit2FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AppPit2FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AppPit2FirebaseUser> appPit2FirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AppPit2FirebaseUser>(
      (user) {
        currentUser = AppPit2FirebaseUser(user);
        return currentUser!;
      },
    );

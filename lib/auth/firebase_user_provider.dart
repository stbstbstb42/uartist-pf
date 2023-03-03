import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UArtistFirebaseUser {
  UArtistFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

UArtistFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UArtistFirebaseUser> uArtistFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<UArtistFirebaseUser>(
      (user) {
        currentUser = UArtistFirebaseUser(user);
        return currentUser!;
      },
    );

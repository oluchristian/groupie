import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //login


  //register
  Future registerUserWithEmailandPassword(String fullName, String email, String password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password)).user!;
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  //signout
}
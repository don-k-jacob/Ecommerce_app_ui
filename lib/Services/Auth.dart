import 'package:ecommerceappui/screens/mainScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommerceappui/Models/User.dart';
import 'package:ecommerceappui/Services/Database.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
class AuthServices {
  final FirebaseAuth _auth= FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  User _userFromFirebaseUser(FirebaseUser user){
    return User!=null?User(Uid: user.uid):null;
  }
  void onGoogleSignIn(BuildContext context) async {
    FirebaseUser user = await _handleSignIn();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HomeScreen()));
  }

  //auth change user obj
  Stream<User> get user {
    return _auth.onAuthStateChanged
//   .map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }
  //sign-in
  Future SignIn(String email,String pass)async{
    try{
      AuthResult result= await _auth.signInWithEmailAndPassword(email: email, password: pass);
      FirebaseUser user =result.user;
      return user;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  Future<FirebaseUser> _handleSignIn() async {
    // hold the instance of the authenticated user
    FirebaseUser user;
    // flag to check whether we're signed in already
    bool isSignedIn = await _googleSignIn.isSignedIn();
    if (isSignedIn) {
      // if so, return the current user
      user = await _auth.currentUser();
    }
    else {
      final GoogleSignInAccount googleUser =
      await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;
      // get the credentials to (access / id token)
      // to sign in via Firebase Authentication
      final AuthCredential credential =
      GoogleAuthProvider.getCredential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken
      );
      user = (await _auth.signInWithCredential(credential)).user;
    }

    return user;
  }
  Future SignUp(String email,String password)async{
    try{
      AuthResult result= await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user =result.user;


      await DataBaseService(uid: user.uid).updateUserData('Unknown', null, '');
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }
 Future Fpass(String email)async{
   try{
    _auth.sendPasswordResetEmail(email: email);
    return true;
   }catch(e){
     print(e.toString());
     return false;
   }
 }
//Sign out
  Future SignOut()
  async{
    try{
      return await _auth.signOut();
    }catch(e){
      print("sinig out");
      print(e.toString());
      return null;
    }
  }
}
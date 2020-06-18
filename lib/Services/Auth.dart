import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommerceappui/Models/User.dart';
import 'package:ecommerceappui/Services/Database.dart';

class AuthServices {
  final FirebaseAuth _auth= FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user){
    return User!=null?User(Uid: user.uid):null;
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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommerceappui/Models/User.dart';
class AuthServices {
  final FirebaseAuth _auth =FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user){
    return User!=null?User(Uid: user.uid):null;
  }

  Stream<User> get user{
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  Future SignIn(String email,String pass)async{
    try{
      AuthResult result=await _auth.createUserWithEmailAndPassword(email: email, password: pass);
      FirebaseUser user = result.user;
      return user;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  
}
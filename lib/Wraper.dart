import 'package:ecommerceappui/screens/SignUp.dart';
import 'package:ecommerceappui/screens/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerceappui/Models/User.dart';
class Wraper extends StatefulWidget {
  @override
  _WraperState createState() => _WraperState();
}

class _WraperState extends State<Wraper> {
  @override
  Widget build(BuildContext context) {
    final user =Provider.of<User>(context);
    if(user == null)
      return SignUP();
    else
      return HomeScreen();
  }
}

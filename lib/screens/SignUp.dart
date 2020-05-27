import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
           Container(
             width: MediaQuery.of(context).size.width,
             height: 140,
             child: Padding(
               padding: const EdgeInsets.only(top: 40,),
               child: Text("Sign Up",
                 style: TextStyle(
                   color: Color(0xffF7F7F7),
                   fontSize: 34,
                   fontWeight: FontWeight.bold
                 ),
               ),
             ),
           ),
           SizedBox(
             height: 73,
           ),
           Container(
             width: 343,
             height: 64,
             decoration: BoxDecoration(
               color: Colors.grey,
               borderRadius: BorderRadius.circular(4)
             ),
           )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ecommerceappui/const.dart';
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
               color: Color(0xff2A2C36),
               borderRadius: BorderRadius.circular(4)
             ),
             child: Center(
               child: TextField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: 'Name',
                 ),
               )
             ),
           ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 343,
              height: 64,
              decoration: BoxDecoration(
                  color: Color(0xff2A2C36),
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 343,
              height: 64,
              decoration: BoxDecoration(
                  color: Color(0xff2A2C36),
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Center(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("Already have an account?",style: TextStyle(
                      color: Color(0xffF7F7F7),
                        fontSize: 14),),
                    Icon(Icons.arrow_forward,color: Color(0xffEF3651),),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xffEF3651),
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Center(
                child: Text("Sign Up",
                style: textStyle),
              ),
            ),
            SizedBox(
              height: 126,
            ),
            Text("Or sign up with social account",
            style: textStyle.copyWith(fontWeight: FontWeight.normal),),
            SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                Container(
                  
                )
              ],
            )

          ],
        ),
      )),
    );
  }
}

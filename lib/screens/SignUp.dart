import 'package:ecommerceappui/screens/Login.dart';
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogIn()),
                );
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
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                  ),
                  height: 64,
                  child: Image.network("https://image.flaticon.com/teams/slug/google.jpg",scale: 5,),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                  ),
                  height: 64,
                  child: Image.network("https://cdn.iconscout.com/icon/free/png-256/facebook-224-498412.png",scale: 5,),
                ),
              ],
            )

          ],
        ),
      )),
    );
  }
}

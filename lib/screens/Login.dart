import 'package:ecommerceappui/Services/Auth.dart';
import 'package:ecommerceappui/const.dart';
import 'package:ecommerceappui/screens/Fpass.dart';
import 'package:ecommerceappui/screens/mainScreen.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final AuthServices  _authServices =AuthServices();
  final _formKey =GlobalKey<FormState>();

  String email='';
  String pass='';
  String error='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xffF7F7F7),
                ), onPressed: (){
                  Navigator.pop(context);
                }),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                          color: Color(0xffF7F7F7),
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
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
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: TextFormField(
                        validator: (val) =>val.isEmpty ?'Enter an email': null,
                        onChanged: (val){
                          setState(() {
                            email=val;
                          });

                        },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  )),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 343,
                  height: 64,
                  decoration: BoxDecoration(
                      color: Color(0xff2A2C36),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: TextFormField(
                        validator: (val)=> val.length<6 ?"enter a password"
                            "6+ char long":null,
                        onChanged: (val){
                          setState(() {
                            pass=val;
                          });

                        },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  )),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fpass()),
                    );
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Forgot your password?",
                          style: TextStyle(color: Color(0xffF7F7F7), fontSize: 14),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xffEF3651),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                GestureDetector(
                  onTap: ()async{
                    if(_formKey.currentState.validate()){
                      dynamic results=await _authServices.SignIn(email, pass);
                      if(results==null){
                        setState(() {
                          error='Error';
                        });
                      }else
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context)=>HomeScreen()
                        ));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffEF3651),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text("LogIn", style: textStyle),
                    ),
                  ),
                ),
                Text(error,style: TextStyle(
                    fontSize: 14,color: Colors.red
                ),),
                SizedBox(
                  height: 126,
                ),
                Center(
                  child: Text(
                    "Or sign up with social account",
                    style: textStyle.copyWith(fontWeight: FontWeight.normal),
                  ),
                ),
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
                      child: Image.network(
                        "https://image.flaticon.com/teams/slug/google.jpg",
                        scale: 5,
                      ),
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
                      child: Image.network(
                        "https://cdn.iconscout.com/icon/free/png-256/facebook-224-498412.png",
                        scale: 5,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

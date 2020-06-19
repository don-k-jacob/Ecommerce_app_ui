import 'package:ecommerceappui/Services/Auth.dart';
import 'package:ecommerceappui/const.dart';
import 'package:ecommerceappui/screens/Home/Profile/MyOrders/OrderDetails.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    nameController.text="Matilda Brown";
    dobController.text="12/12/1989";
    passwordController.text="1234567890";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: <Widget>[
              EditAppBar(txt: "Settings",back: true,),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Personal Information",style: h2Style,),
                        Spacer()
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 343,
                      height: 64,
                      decoration: BoxDecoration(
                          color: Color(0xff2A2C36),
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                           border: OutlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: 343,
                      height: 64,
                      decoration: BoxDecoration(
                          color: Color(0xff2A2C36),
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: TextField(
                        controller: dobController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Date of Birth',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 54,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Password",style: h2Style,),
                        Spacer(),
                        Text("Change",style: h3Style,)
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 343,
                      height: 64,
                      decoration: BoxDecoration(
                          color: Color(0xff2A2C36),
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: TextField(
                        readOnly: true,
                        obscureText: true,

                        enableInteractiveSelection: false,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
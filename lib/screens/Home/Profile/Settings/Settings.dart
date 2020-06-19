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
  bool salesIsSwitched = false;
  bool arrivalsIsSwitched = false;
  bool statusIsSwitched = false;

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
                        GestureDetector(
                          onTap: (){
                            _settingModalBottomSheet(context);
                          },
                            child: Text("Change",style: h3Style,))
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
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Password",style: h2Style,),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Sales",style: h4Style.copyWith(fontWeight: FontWeight.normal)),
                        Spacer(),
                        Container(
                          child: Switch(
                            value: salesIsSwitched,
                            onChanged: (value){
                              setState(() {
                                salesIsSwitched=value;
                                print(salesIsSwitched);
                              });
                            },
                            activeTrackColor: Color(0xffABB4BD),
                            activeColor: Color(0xff55D85A),
                            inactiveThumbColor: Color(0xffABB4BD),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: <Widget>[
                        Text("New arrivals",style: h4Style.copyWith(fontWeight: FontWeight.normal)),
                        Spacer(),
                        Container(
                          child: Switch(
                            value: arrivalsIsSwitched,
                            onChanged: (value){
                              setState(() {
                                arrivalsIsSwitched=value;
                                print(arrivalsIsSwitched);
                              });
                            },
                            activeTrackColor: Color(0xffABB4BD),
                            activeColor: Color(0xff55D85A),
                            inactiveThumbColor: Color(0xffABB4BD),
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Delivery status changes",style: h4Style.copyWith(fontWeight: FontWeight.normal),),
                        Spacer(),
                        Container(
                          child: Switch(
                            value: statusIsSwitched,
                            onChanged: (value){
                              setState(() {
                                statusIsSwitched=value;
                                print(statusIsSwitched);
                              });
                            },
                            activeTrackColor: Color(0xffABB4BD),
                            activeColor: Color(0xff55D85A),
                            inactiveThumbColor: Color(0xffABB4BD),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




void _settingModalBottomSheet(context){
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc){
        return Container(
          height: 472,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xff1E1F28),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(34),
                  topRight: Radius.circular(34))
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 14,
              ),
              Container(
                height: 6,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xffABB4BD),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text("Password Change",style: h2Style,),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        );
      }
  );
}
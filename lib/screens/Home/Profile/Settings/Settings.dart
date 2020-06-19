import 'package:ecommerceappui/Services/Auth.dart';
import 'package:ecommerceappui/const.dart';
import 'package:ecommerceappui/screens/Home/Profile/MyOrders/OrderDetails.dart';
import 'package:flutter/material.dart';
String img="https://s3-alpha-sig.figma.com/img/581b/273d/1a360f84cfd9a99708fc889ab7d86e6c?Expires=1592784000&Signature=WM5iwPiBwg5SaEFNqULBhWs1sd3TKun7rMr8vBYw91oPMLVBQoTgKQo8HS~47FLBy~BRX0~nB3PWWUh0PBQ-DRvReC05pPTlM1-0nbfbDvowYENKXzLH7cbYE1T8vugY85xkCRw5cKRkMiSH~PMqwq8zBvnyigJT2FoWflHHVM-Z~7YsQTlCv4T1M2gZC41iwYxk~U1E6LwTXHoMPcTzv3~tTNMzmDYiAgQFn~EGN7bq3almz097nUfDluKTuR5sccgYjIRhqLqBhc43QETcU6QRBtK7OfCYMosglDlPTzoWhK4V7yH2Mm-B3IHXBhLTicoVGdNPEMzgk4sWkCCfwQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Personal Information",style: h2Style,),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 343,
                      height: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Color(0xff2A2C36),
                              border: OutlineInputBorder(),
                              labelText: 'Name',
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
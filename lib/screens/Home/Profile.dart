import 'package:ecommerceappui/Services/Auth.dart';
import 'package:ecommerceappui/const.dart';
import 'package:ecommerceappui/main.dart';
import 'package:flutter/material.dart';
String img="https://s3-alpha-sig.figma.com/img/581b/273d/1a360f84cfd9a99708fc889ab7d86e6c?Expires=1592784000&Signature=WM5iwPiBwg5SaEFNqULBhWs1sd3TKun7rMr8vBYw91oPMLVBQoTgKQo8HS~47FLBy~BRX0~nB3PWWUh0PBQ-DRvReC05pPTlM1-0nbfbDvowYENKXzLH7cbYE1T8vugY85xkCRw5cKRkMiSH~PMqwq8zBvnyigJT2FoWflHHVM-Z~7YsQTlCv4T1M2gZC41iwYxk~U1E6LwTXHoMPcTzv3~tTNMzmDYiAgQFn~EGN7bq3almz097nUfDluKTuR5sccgYjIRhqLqBhc43QETcU6QRBtK7OfCYMosglDlPTzoWhK4V7yH2Mm-B3IHXBhLTicoVGdNPEMzgk4sWkCCfwQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";

class Profile extends StatelessWidget {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: <Widget>[
              EditAppBar(txt: "My Profile",),
              SizedBox(
                height: 28,
              ),
              Row(
                children: <Widget>[
                  SizedBox(),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage(img),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    width: 200,
                    height: 64,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Matilda Brown",style: h2Style,),
                        Text("matildabrown@mail.com",style: h3Style,)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
//                  ListTile(
//                    title: Text("My orders"),
//                    subtitle: Text("Already have 12 orders"),
//                    leading: IconButton(
//                        icon: Icon(
//                        Icons.arrow_forward_ios,
//                                   ),
//                    onPressed: null),
//                  )
                ],
              ),
              ListTile(txt: "Logout",icon: Icons.exit_to_app,
                onPressed: () async {
                  await _auth.SignOut();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => OnBoardingPage()),
                  );
                },),
            ],
          ),
        ),
      ),
    );
  }
}
class ListTile extends StatelessWidget {
  const ListTile({
    @required this.txt,
    @required this.icon,
    @required this.onPressed,
  });

  final String txt;
  final IconData icon;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(txt,style: TextStyle(
            fontSize: 25,
          ),),
          Icon(icon)
        ],
      ),
    );
  }
}
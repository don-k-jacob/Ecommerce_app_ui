import 'package:ecommerceappui/Services/Auth.dart';
import 'package:ecommerceappui/const.dart';
import 'package:ecommerceappui/main.dart';
import 'package:ecommerceappui/screens/Home/Profile/My_Orders.dart';
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
              EditAppBar(txt: "My Profile",back: false,),
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
              SizedBox(
                width: 28,
              ),
              ListTile(txt: "My orders",txt2:"Already have 12 orders",icon: Icons.arrow_forward_ios,
                onPressed: () async {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyOrders()));
                },),
              ListTile(txt: "Shipping addresses",txt2:"3 ddresses",icon: Icons.arrow_forward_ios,
                onPressed: () async {

                },),
              ListTile(txt: "Payment methods",txt2:"Visa **34",icon: Icons.arrow_forward_ios,
                onPressed: () async {
                  await _auth.SignOut();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => OnBoardingPage()),
                  );
                },),
              ListTile(txt: "Promocodes",txt2:"You have special promocodes",icon: Icons.arrow_forward_ios,
                onPressed: () async {

                },),
              ListTile(txt: "My reviews",txt2:"Reviews for 4 items",icon: Icons.arrow_forward_ios,
                onPressed: () async {

                },),
              ListTile(txt: " Settings",txt2:"Notifications, password",icon: Icons.arrow_forward_ios,
                onPressed: () async {

                },),
              ListTile(txt: "Logout",txt2:'',icon: Icons.exit_to_app,
                onPressed: () async {
                  await _auth.SignOut();
                  Navigator.of(context).pushReplacement(
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
    this.txt2,
  });

  final String txt;
  final String txt2;
  final IconData icon;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(txt,style: TextStyle(
                  fontSize: 16,
                  color: Color(0xfff7F7F7),
                ),),
                Text(txt2,style: TextStyle(
                    fontSize: 11,
                    color: Color(0xfffABB4BD)
                ),),
              ],
            ),
            Icon(icon)
          ],
        ),
      ),
    );
  }
}
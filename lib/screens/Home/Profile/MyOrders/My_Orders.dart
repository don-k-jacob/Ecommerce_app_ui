import 'package:ecommerceappui/Services/Auth.dart';
import 'package:ecommerceappui/const.dart';
import 'package:ecommerceappui/screens/Home/Profile/MyOrders/OrderDetails.dart';
import 'package:flutter/material.dart';
String img="https://s3-alpha-sig.figma.com/img/581b/273d/1a360f84cfd9a99708fc889ab7d86e6c?Expires=1592784000&Signature=WM5iwPiBwg5SaEFNqULBhWs1sd3TKun7rMr8vBYw91oPMLVBQoTgKQo8HS~47FLBy~BRX0~nB3PWWUh0PBQ-DRvReC05pPTlM1-0nbfbDvowYENKXzLH7cbYE1T8vugY85xkCRw5cKRkMiSH~PMqwq8zBvnyigJT2FoWflHHVM-Z~7YsQTlCv4T1M2gZC41iwYxk~U1E6LwTXHoMPcTzv3~tTNMzmDYiAgQFn~EGN7bq3almz097nUfDluKTuR5sccgYjIRhqLqBhc43QETcU6QRBtK7OfCYMosglDlPTzoWhK4V7yH2Mm-B3IHXBhLTicoVGdNPEMzgk4sWkCCfwQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  final AuthServices _auth = AuthServices();
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: <Widget>[
              EditAppBar(txt: "My Orders",back: true,),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[

                    GestureDetector(
                      onTap: ()=>setState(() {
                       _selectedIndex=0;
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:(_selectedIndex==0)?Color(0xffF6F6F6):Color(0xff1E1F28)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 8),
                          child: Text("Delivered",
                          style: TextStyle(
                            fontSize: 17,
                              color: (_selectedIndex==0)?Color(0xff2A2C36):Color(0xffF7F7F7)
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 32,),
                    GestureDetector(
                      onTap: ()=>setState(() {
                        _selectedIndex=1;
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:(_selectedIndex==1)?Color(0xffF6F6F6):Color(0xff1E1F28)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 8),
                          child: Text("Processing",
                            style: TextStyle(
                                fontSize: 17,
                                color: (_selectedIndex==1)?Color(0xff2A2C36):Color(0xffF7F7F7)
                            ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 32,),
                    GestureDetector(
                      onTap: ()=>setState(() {
                        _selectedIndex=2;
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:(_selectedIndex==2)?Color(0xffF6F6F6):Color(0xff1E1F28)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 8),
                          child: Text("Cancelled",
                            style: TextStyle(
                                fontSize: 14,
                                color: (_selectedIndex==2)?Color(0xff2A2C36):Color(0xffF7F7F7)
                            ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/1.4,
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return OrderItemWidget(
                      status: (_selectedIndex==0)?'Delivered':(_selectedIndex==1)?"Processing":"Cancelled",
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrderItemWidget extends StatelessWidget {
  final String status;

  const OrderItemWidget({Key key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff2C2C2C),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19,vertical: 19),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Order no: 1947034",
                  style: TextStyle(
                      color: Color(0xffF7F7F7),
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),
                Spacer(),
                Text("05-12-2019",
                  style: TextStyle(
                      color: Color(0xffABB4BD),
                      fontSize: 14
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Text("Tracking number:",
                  style: TextStyle(
                      color: Color(0xffABB4BD),
                      fontSize: 14
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("IW3475",style: TextStyle(
                    color: Color(0xffF7F7F7),
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),),
              ],
            ),
            SizedBox(
              width: 4,
            ),
            Row(
              children: <Widget>[
                Text("Quantity:  ",
                  style: TextStyle(
                      color: Color(0xffABB4BD),
                      fontSize: 14
                  ),
                ),
                Text("3",style: TextStyle(
                    color: Color(0xffF7F7F7),
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
                Spacer(),
                Text("Total Amount:  ",
                  style: TextStyle(
                      color: Color(0xffABB4BD),
                      fontSize: 14
                  ),
                ),
                Text("112\$",style: TextStyle(
                    color: Color(0xffF7F7F7),
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                OutlineButton(

                    child: new Text("Details"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>OrderDetails(status: status,)
                      ));
                    },
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
                Spacer(),
                Text(status,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: (status=='Delivered')?Color(0xff55D85A):(status=="Cancelled")?Color(0xffEF3651):Colors.yellow,
                      fontSize: 14
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

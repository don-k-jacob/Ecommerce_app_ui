import 'package:ecommerceappui/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
int _index=0;
class _HomeScreenState extends State<HomeScreen> {
  void changeIndex(int index){
    setState(() {
      _index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 32
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home),color: (_index==0)?Colors.red:Colors.grey,iconSize: 36,onPressed: (){
                changeIndex(0);
              },),
              IconButton(icon: Icon(Icons.shopping_cart),color: (_index==1)?Colors.red:Colors.grey,iconSize: 36,onPressed: (){
                changeIndex(1);
              },),
              IconButton(icon: Icon(Icons.shopping_basket),color: (_index==2)?Colors.red:Colors.grey,iconSize: 36,onPressed: (){
                changeIndex(2);
              },),
              IconButton(icon: Icon(Icons.favorite),color: (_index==3)?Colors.red:Colors.grey,iconSize: 36,onPressed: (){
                changeIndex(3);
              },),
              IconButton(icon: Icon(Icons.person),color: (_index==4)?Colors.red:Colors.grey,iconSize: 36,onPressed: (){
                changeIndex(4);
              },),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff1E1F28),
      body: pages[_index],
    );
  }
}
List<Widget> pages=[
  pg1(),
  Container(
    child: Center(
      child: Text("cart"),
    ),
  ),
  Container(
    child: Center(
      child: Text("shop"),
    ),
  ),
  Container(
    child: Center(
      child: Text("fav"),
    ),
  ),
  Container(
    child: Center(
      child: Text("profile"),
    ),
  ),

];
class pg1 extends StatelessWidget {
  const pg1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 636,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://s3-alpha-sig.figma.com/img/bdae/c275/d9524ae3df45c58564ace1ab848ba7be?Expires=1591574400&Signature=UARsH~IYVov4riNWoBQJE54uKyNeVMVVZlUb35EFVYNsNYriBJGwG4E4-ICOpeTbpLRytvG~9-wzKu4F9lJ~FClEXKJ51LSw~mKM91sRQ7LJjln1UcDLCeK4BZ5P3dRvStMITuMoPuPj0Ty3MqesoS2ecPV0rdkQbUMVqx2oTDBidybxIidEkq4gnSjPGGVh1OLrLVYWVtlEXwAnJzQjKC9bLPnvgijYuAR~vZqZg5clb6UmKWtpBtl268T-IETPuCaTODKXOMRPsqkgeyjo4UQLPMcIRaL9YDVOCDbpMi5h5pIGe8S1XRjTlWBoT~fZ9Amtr9IiaCHsfpfVLVho9w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                        fit: BoxFit.fitHeight)),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 434, left: 15),
                      child: Text(
                        "Fashion\nsale",
                        style: TextStyle(
                            fontSize: 48,
                            color: Color(0xffF7F7F7),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      height: 36,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xffEF3651),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Text(
                          "Check",
                          style: textStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 33,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text(
                "New",
                style: textStyle.copyWith(fontSize: 34),
              ),
              Text(
                "View all",
                style: textStyle.copyWith(fontSize: 11),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

import 'package:ecommerceappui/const.dart';
import 'package:ecommerceappui/screens/Home/HomeScreen.dart';
import 'package:ecommerceappui/screens/Home/Profile.dart';
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
  Home(),
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
  Profile(),
  Container(
    child: Center(
      child: Text("fav"),
    ),
  ),


];


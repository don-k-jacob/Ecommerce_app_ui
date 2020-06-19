import 'package:ecommerceappui/const.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: <Widget>[
              EditAppBar(txt: "Favorites",back: false,),
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[

                    suggestions(txt: "Summer",),
                    SizedBox(
                      width: 12,
                    ),
                    suggestions(txt: "T-Shirts",),
                    SizedBox(
                      width: 12,
                    ),
                    suggestions(txt: "Shirts",),
                    SizedBox(
                      width: 12,
                    ),
                    suggestions(txt: "Shirts",),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.filter_list),
                        Text("Filters"),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.arrow_downward),
                        Text("Price: lowest to high"),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.list),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class suggestions extends StatefulWidget {

  final String txt;

 suggestions({Key key, this.txt}) : super(key: key);

  @override
  _suggestionsState createState() => _suggestionsState();
}

class _suggestionsState extends State<suggestions> {
  bool _selected=false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _selected=!_selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
                              color:(_selected)?Color(0xffEF3651):Color(0xffF6F6F6)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 8),
          child: Text(widget.txt,
            style: TextStyle(
                fontSize: 17,
                color: (_selected)?Color(0xffF7F7F7):Color(0xff2A2C36)
            ),),
        ),
      ),
    );
  }
}

import 'package:ecommerceappui/const.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
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
                        image: NetworkImage("shorturl.at/mwyM4"),
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
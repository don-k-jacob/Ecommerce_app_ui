import 'package:flutter/material.dart';

TextStyle textStyle=TextStyle(
    color: Color(0xffF7F7F7),
    fontWeight: FontWeight.bold,
    fontSize: 14
);

TextStyle h1Style=TextStyle(
    color: Color(0xffF7F7F7),
    fontWeight: FontWeight.bold,
    fontSize: 34
);

TextStyle h2Style=TextStyle(
    color: Color(0xffF7F7F7),
    fontWeight: FontWeight.w500,
    fontSize: 18
);

TextStyle h3Style=TextStyle(
    color: Color(0xffABB4BD),
    fontWeight: FontWeight.w400,
    fontSize: 14
);
TextStyle h4Style=TextStyle(
    color: Color(0xffF7F7F7),
    fontWeight: FontWeight.bold,
    fontSize: 14
);

class EditAppBar extends StatelessWidget {
  final txt;

  const EditAppBar({Key key, this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Spacer(),
              IconButton(icon: Icon(Icons.search), onPressed: (){}),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Text(txt,style: h1Style),

        ],
      ),
    );
  }
}

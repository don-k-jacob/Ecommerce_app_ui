import 'package:ecommerceappui/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
              ),
              SizedBox(
                height: 28,
              ),
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                   height: MediaQuery.of(context).size.height/6,
                   width: MediaQuery.of(context).size.width,
                   child: Stack(
                     children: <Widget>[
                       Container(
                         width: MediaQuery.of(context).size.width,
                         height: MediaQuery.of(context).size.height/7.5,
                         decoration: BoxDecoration(
                           color: Color(0xff2A2C36),
                           borderRadius: BorderRadius.circular(8),
                         ),
                         child: Row(
                           children: <Widget>[
                             Container(
                               height: MediaQuery.of(context).size.height/7.5,
                               width: MediaQuery.of(context).size.height/7.5,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),
                                 image: DecorationImage(image: NetworkImage("https://s3-alpha-sig.figma.com/img/1770/088f/bba96a73adb59b4213783033221c4b94?Expires=1593388800&Signature=gsOeN99KV5kYg-9HZPJN8RaTpiaXWf6CelWwkx9yJ09DGFORLN3FRsC7NpcxNpYdpzIuLMM~Vu6yRRofOzBX~QRsaRms02~ZGDINmf~803biL0I66js~XKADIVUUNYekCkXDkaYtPPjcCya4zYHj4~IGQOOBpadxq-gkuRE1qBaVakoSsJH9qX~zsubtWKv~kSGCNWf8Qb8A48NvDS9sJpwCFjPPfI3a4zXUJi4z3mHHlFs7SOjq1xOy3tS4wNWAGeobyNirhraJpv1oaNzADwfitmr5nwkOhOiDJ~2E7ddn8dbrk4W1xs-gflweb8htWbnNv5dSdWrIrgDjjsmiUA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                                 fit: BoxFit.cover)
                               ),
                             ),
                             SizedBox(
                               width: 12,
                             ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text("LIME",style: h3Style,),
                                 SizedBox(
                                   height: 3,
                                 ),
                                 Text("Shirt",style: h2Style,),
                                 SizedBox(
                                   height: 6,
                                 ),
                                 Row(
                                   children: <Widget>[
                                     Text("Color: ",style: h3Style,),
                                     Text("Blue",style: h4Style.copyWith(fontWeight: FontWeight.normal),),
                                     SizedBox(
                                       width: 25,
                                     ),
                                     Text("Size: ",style: h3Style,),
                                     Text("L",style: h4Style.copyWith(fontWeight: FontWeight.normal),),
                                   ],
                                 ),
                                 SizedBox(
                                   height: 12,
                                 ),
                                 Row(
                                   children: <Widget>[
                                     Text("32\$",style: h2Style,),
                                     SizedBox(
                                       width: 30,
                                     ),
                                     Container(child: Row(
                                       children: <Widget>[
                                         Icon(Icons.star,color: Color(0xffFFBA49),),
                                         Icon(Icons.star,color: Color(0xffFFBA49),),
                                         Icon(Icons.star,color: Color(0xffFFBA49),),
                                         Icon(Icons.star,color: Color(0xffFFBA49),),
                                         Icon(Icons.star,color: Color(0xffFFBA49),),
                                         Text("(10)",style: h3Style,),
                                       ],
                                     )),

                                   ],
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),
                       Align(
                         alignment: Alignment.bottomRight,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             GestureDetector(
                               child: Container(
                                 height: 40,
                                 width: 40,
                                 child: Icon(Icons.close),
                               ),
                             ),
                             GestureDetector(
                               child: Container(
                                 height: 40,
                                 width: 40,
                                 decoration: BoxDecoration(
                                   color: Color(0xffEF3651),
                                   shape: BoxShape.circle
                                 ),
                                 child: Icon(Icons.add_shopping_cart),
                               ),
                             )
                           ],
                           crossAxisAlignment: CrossAxisAlignment.end,
                         ),

                       )
                     ],
                   ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
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

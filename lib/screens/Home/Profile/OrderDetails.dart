import 'package:ecommerceappui/const.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  final String status;

  const OrderDetails({Key key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1E1F28),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){

          })
        ],
        title: Center(child: Text("Order Details")),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      backgroundColor: Color(0xff1E1F28),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 21,
                ),
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
                    Spacer(),
                    Text(status,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: (status=='Delivered')?Color(0xff55D85A):(status=="Cancelled")?Color(0xffEF3651):Colors.yellow,
                          fontSize: 14
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text("3 items",style: TextStyle(
                    color: Color(0xffF7F7F7),
                    fontSize: 14,
                ),),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 400,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return ODetailsItemWidget(img: images[index],);
                    },
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Text("Order information",
                style: h4Style,),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Shipping Address:",style: h3Style,),
                          Spacer(),
                          Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("3 Newbridge Court ,Chino Hills, CA 91709, United States"))

                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Payment method:",style: h3Style,),
                          Spacer(),
                          Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Row(
                                children: <Widget>[
                                  Image.file(),
                                  Text("**** **** **** 3947"),
                                ],
                              ))

                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Delivery method:",style: h3Style,),
                          Spacer(),
                          Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("3 Newbridge Court ,Chino Hills, CA 91709, United States"))

                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Discount:",style: h3Style,),
                          Spacer(),
                          Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("3 Newbridge Court ,Chino Hills, CA 91709, United States"))

                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Total Amount:",style: h3Style,),
                          Spacer(),
                          Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("3 Newbridge Court ,Chino Hills, CA 91709, United States"))

                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ODetailsItemWidget extends StatelessWidget {
  final String img;

  const ODetailsItemWidget({Key key, this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff2A2C36),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Container(
            height: 120,
            width: 104,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),
                image: DecorationImage(image: NetworkImage(img),
                  fit: BoxFit.fill,)
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 14
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                SizedBox(
                  height: 11,
                ),
                Text("Pullover",
                  style: TextStyle(
                      color: Color(0xffF7F7F7),
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),
                Text("Mango",
                    style: h3Style
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: <Widget>[
                    Text("Color: ",
                      style: h3Style,),
                    Text("Gray",
                      style: h4Style,),
                    SizedBox(
                      width: 18,
                    ),
                    Text("Size: ",
                      style: h3Style,),
                    Text("L",
                      style: h4Style,),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: <Widget>[
                    Text("Units: ",
                      style: h3Style,),
                    Text("1",
                      style: h4Style,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                    ),
                    Text("51\$",
                      style: h4Style,),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<String> images=[
  "https://s3-alpha-sig.figma.com/img/6011/aa7a/e269bb70fd8c136d1d0733c8ce6f245a?Expires=1593388800&Signature=YGV2Sg4yiwOstDHrEs-zaMnMR~E3mNAM33bsi9WcjKT3L0ZySADvMhTNBCwPf3nnkxa2xisDXSN5heHkr70KYLIKvvtgDceI60tlkkXvtFxO9IEVTxHQD3nX7gWDq2nVgDcDmcoFm6s2I~FEORvk1s53y5kpfkDueU79-eKv6kzaEhIkurDnC9Um-8KZHmsX6BHIqgB6n5~8Nxj6O-Y~5dPRjwiYa4whlpFooSt70ZD15FjEwc9m7D0BqZs4t8XnDc9dLL0DUMvP71brDa1QGWeny3XWgpvKw5H-6XBF8OLpHzAxWDGlAfE4NLx~C4q0Hxde94a~iUU4RU0QXOTOiA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
  "https://s3-alpha-sig.figma.com/img/1821/5f62/e259b4c9081785e2fb7f4b553d1a8023?Expires=1593388800&Signature=PhBvd9VDEK-K~3KYPtEaFtKQxVhnVKPQp4eBt9IqQmWf46QtzAU0bUPxnue6Vd34XRrc2oxL7lM8wkjPLyZEKXs-MJ-iM74DrtpNx~2oR9SuTqKWt3f6ea4yh0ri76WY2tVDjpDO2xxa7C54mP8GeGfJhtY3X8V2DSRJoL7q~FVlzLziDl-Xisn8RS0cxEp4kW6d0xpZTQgxg7vWpgY3dO4UmVHVIPBPD0X8uY5d3-XyokqRVO-cLCra26NYHnreRKRfMP1L-S7JxT285cO-UxOyW3XzIMHA6lhqsEGTXSD83YlAMcHdWy330KRSJIsFGyH2NoznsmGbAHINfVpleA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
  "https://s3-alpha-sig.figma.com/img/6e2a/6075/d2aebb9b52db31deea621f309362bab4?Expires=1593388800&Signature=beXtpUHsQz5KXo1XrV2wC-WgkEOOovW~lktcOCrlhV1cp14mi6b0IKidx76x42FaR1a-2-vJF~DQ0RTjSWYjuZqwNaFOpdo4AWYXdfKvHDoH5sDHZZLfjNJw7RsZUbSeVR4H43rwmw3Sb~KWEcq3ZW~4yThsDDZ64xdZL--WptQMeXb4oAAlur0c1qOG8wwmVE--k1GliMliP8oa41Fb4omsXENAneDWoWphVzrIImQGyhcuqr66cX9PQ0zTZAE24ebsSK4jZzqv7BDHBegakvd7d~rfERXDvIcmpm2ocaoIxUkTqFN3QHjwIkYbUm~693XyP-6edj1QnxusW9txyg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
];
import 'package:ecommerceappui/Services/Auth.dart';
import 'package:ecommerceappui/Wraper.dart';
import 'package:ecommerceappui/screens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ecommerceappui/screens/Login.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home:StreamProvider.value(
        value: AuthServices().user,
        child: MaterialApp(
          theme: new ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.dark,
          ),
          title: 'Introduction screen',
          debugShowCheckedModeBanner: false,
          home: Wraper(),
        ),
      )
    );
  }
}
class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LogIn()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('images/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xFF343434),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      globalBackgroundColor: Color(0xFF343434),
      animationDuration: 5,
      key: introKey,
      pages: [
        PageViewModel(
          title: "Design",
          body: "Design and make your own advertisement using our templates.",
          image: _buildImage('img_2'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Present",
          body:
          "Present your advertisement in our platform and earn new customers.",
          image: _buildImage('img_1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Analyze",
          bodyWidget: Column(
            children: <Widget>[
              Text(
                "You can  analyze your performance any time and anywhere",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: ()=> _onIntroEnd(context),
                child: Container(
                    width: 258,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff6C63FF),
                    ),
                    child: Center(child: Text("Get Strarted",style: TextStyle(
                        fontSize: 30,color: Colors.white
                    ),))),
              ),
            ],
          ),
          image: _buildImage('img_3'),
          decoration: pageDecoration,
        ),
      ],

      onDone: () => null,
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFE5E5E5),
        activeColor: Color(0xff6C63FF),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

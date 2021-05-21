import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:knesics/Pages/SecondPage.dart';
import 'package:swipedetector/swipedetector.dart';

import 'WaveClipper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: HexColor('#8e9775'),
            child: Center(
              child: SingleChildScrollView(
                child: Text("Scrollable Text Here"
                  ,
                  style: TextStyle(fontSize: 30.0),),
              ), //olive green color
            ),
          ),
          ClipPath(
            clipper: WaveClipper(),
            child: SwipeDetector(
                child: Container(
                  color: HexColor('#faf2da'),
                ),
                onSwipeDown: () {
                  Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return SecondPage();
                    },
                    transitionDuration: Duration(seconds: 1),
                    transitionsBuilder: (context, animation, secondaryAnimation,
                        child) {
                      animation = CurvedAnimation(
                        curve: Curves.decelerate,
                        reverseCurve: Curves.easeOutBack,
                        parent: animation,
                      );
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  )
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}

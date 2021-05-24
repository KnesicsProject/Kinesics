import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:knesics/Pages/Home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void loadScreen() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation){
          return Home();
      },
          transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (context, animaton,secondaryAnimation,child){
          animaton =  CurvedAnimation(
            parent: animaton,
            curve: Curves.fastOutSlowIn,
          );
          return FadeTransition(
        opacity: animaton,
          child: child,
        );
      }
      ));
    });
  }

  @override
  void initState() {
    super.initState();
    loadScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('#faf2da'),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     TextLiquidFill(
      //       boxHeight: MediaQuery.of(context).size.height*3/4,
      //       boxWidth: MediaQuery.of(context).size.width,
      //       boxBackgroundColor: HexColor('#faf2da'),
      //       text: 'Knesics',
      //       textStyle: GoogleFonts.courgette(
      //         fontSize: 90.0,
      //         fontWeight: FontWeight.bold,
      //         fontStyle: FontStyle.italic,
      //         color: Colors.greenAccent,
      //         decoration: TextDecoration.none,
      //       ),
      //       textAlign: TextAlign.end,
      //       waveColor: HexColor('#8e9775'),
      //       waveDuration: Duration(seconds: 5),
      //     ),
      //     // Row(
      //     //   children: [
      //     //     Text('Connection')  ,
      //     //     DefaultTextStyle(
      //     //       style:  TextStyle(
      //     //       fontSize: 40.0,
      //     //       fontFamily: 'Horizon',
      //     //     ),
      //     //     child: AnimatedTextKit(
      //     //       animatedTexts: [
      //     //       RotateAnimatedText('ENHANCED'),
      //     //       RotateAnimatedText('EMPOWERED'),
      //     //       RotateAnimatedText('ENTICED'),
      //     //     ]),
      //     //     )],
      //     // ),
      //     Row(
      //       mainAxisSize: MainAxisSize.min,
      //       crossAxisAlignment: CrossAxisAlignment.center ,
      //       children: <Widget>[
      //         const SizedBox(width: 20.0, height: 100.0),
      //          const Text('Be',
      //           style: TextStyle(fontSize: 43.0),
      //           ),
      //         const SizedBox(width: 20.0, height: 100.0),
      //         DefaultTextStyle(
      //           style:const TextStyle(
      //           fontSize: 40.0,
      //           fontFamily: 'Horizon',
      //             color: Colors.green,
      //         ),
      //         child: AnimatedTextKit(
      //         animatedTexts: [
      //           RotateAnimatedText('AWESOME'),
      //           RotateAnimatedText('OPTIMISTIC'),
      //           RotateAnimatedText('DIFFERENT'),
      //         ],
      //       ),
      //     ),
      //     ],
      //   ),
      //   ],
      // ),
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ScaleAnimatedText(
              'Knesics',
              textStyle: GoogleFonts.courgette(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 90.0,
                decoration: TextDecoration.none,
                color: HexColor('#8e9775'),
              ),
              duration: Duration(seconds: 8)
            ),
          ],
          // pause: const Duration(seconds:5 ) ,
          repeatForever: false,
          isRepeatingAnimation: false,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:knesics/Pages/SecondPage.dart';




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
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: HexColor('#8e9775'),
            ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 90.0, 10.0, 0.0),
                      child: Text("' Your success and happiness lies in you. Resolve to keep happy, and your joy and you shall form an invincible host against difficulties '",
                        style: GoogleFonts.permanentMarker(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0,top: 30.0),
                        child: Text(' - Hellen Keller',
                        style: GoogleFonts.permanentMarker(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),),
                      ),
                    ),
                  ],
                ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation){
                  return SecondPage();
                },
                transitionsBuilder: (context, animation, secondaryAnimation, child){
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                transitionDuration: Duration(seconds: 2),
                reverseTransitionDuration: Duration(seconds: 2),
              ));
            },
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.75),
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              decoration: BoxDecoration(
                  color: HexColor('#faf2da'),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70.0) ,topRight: Radius.circular(70.0))
              ),
              child: Center(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('Know More',
                        style: GoogleFonts.itim(
                          fontSize: 35.0,
                          color: HexColor('#6A6932'),
                      ),),
                    ),
                    Text('Knesics',
                    style: GoogleFonts.itim(
                      fontSize: 75.0,
                      color: HexColor('#6A6932'),
                    ),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

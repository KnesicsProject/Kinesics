import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       color: Colors.white54,
        child: Column(
          children: [
            InkWell(
              splashColor: Colors.grey[350],
              onTap: () {
                Navigator.pushNamed(context, '/Detection');
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width,
                transform: Matrix4.skewY(9.0),
                transformAlignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      HexColor("#6dd5ed"),
                      HexColor("#2193b0"),
                    ]
                  ),
                  border: Border.all(color: Colors.grey[300])
                ),
                child: Center(
                  child: Text('Detect',
                  style: GoogleFonts.ubuntu(textStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'ubuntu',
                    decoration: TextDecoration.none,
                    letterSpacing: 4.0,
                    fontSize: 40.0,
                  )),),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.brown[900],
              onTap: () {
                Navigator.pushNamed(context, '/Display');
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width,
                transform: Matrix4.skewY(9.0),
                transformAlignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end:  Alignment.topLeft,
                    colors: [
                      HexColor("#D3CBB8"),
                      HexColor("#6D6027"),
                    ]
                  ),
                  border: Border.all(color: Colors.grey[300])
              ),
                child: Center(
                  child: Text('Knesics',
                    style: GoogleFonts.ubuntu(textStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ubuntu',
                      decoration: TextDecoration.none,
                      letterSpacing: 4.0,
                      fontSize: 40.0
                    )),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

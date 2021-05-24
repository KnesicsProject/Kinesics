import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:knesics/Pages/Display.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      backgroundColor: HexColor('#faf2da'),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Detection');
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.height*0.6,
                height: MediaQuery.of(context).size.height*0.35,
                child: Card(
                  elevation: 30.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  margin: EdgeInsets.all(20.0),
                  color: HexColor('#8e9775'),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                      child: Text("Detect",
                      style: GoogleFonts.courgette(
                        color: HexColor('#F5F5DC'),
                        fontSize:55.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, PageRouteBuilder(
                  // fullscreenDialog: true,
                  pageBuilder: (context,animation,secondaryAnimation){
                    return Display();
                  },
                  transitionsBuilder: (context, animation, secondaryAnimation, child){
                    return ScaleTransition(
                      scale: CurvedAnimation(
                        parent: animation,
                        curve: Curves.bounceOut,
                      ),
                      child: child,
                    );
                  },
                  transitionDuration: Duration(seconds: 1),
                  reverseTransitionDuration: Duration(seconds: 1),
                ));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.height*0.6,
                height: MediaQuery.of(context).size.height*0.35,
                child: Hero(
                  tag: 'heroAnimchart',
                  child: Card(
                    elevation: 30.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    margin: EdgeInsets.all(20.0),
                    color: HexColor('#8e9775'),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Center(
                        child: Text("Knesics",
                          style: GoogleFonts.courgette(
                            color: HexColor('#F5F5DC'),
                            fontSize:55.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

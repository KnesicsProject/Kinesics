import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

// import 'WaveClipper.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {


  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'heroAnimchart',
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              HexColor('#faf2da'),
              HexColor('#8e9775'),
            ]
          ),
        ),
        child: CustomScrollView(
          slivers: [
             SliverAppBar(
                    expandedHeight: 250.0,
                    pinned: true,
                    // floating: true,
                    brightness: Brightness.dark,
                    backgroundColor: HexColor('#8e9775'), //#8e9775
                    flexibleSpace: FlexibleSpaceBar(
                           // background: Image.network('https://i.pinimg.com/originals/b5/e8/5c/b5e85c2b3160a0e8f8485230a50d257a.jpg',
                           //  fit: BoxFit.cover,),
                            title: Text('Knesics',
                            style: GoogleFonts.courgette(
                            color: Colors.white,
                            letterSpacing: 2.0,
                            fontSize: 40.0,
                          )),
                          centerTitle: true,
                  ),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.vertical(
                   bottom: Radius.circular(50.0),
                 )
               )
                    ),

            // SliverAppBar(
            //   expandedHeight: 165.0,
            //   floating: true,
            //   backgroundColor: Colors.blueGrey[600],
            //   flexibleSpace: FlexibleSpaceBar(
            //     background: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReT8ZduoTU0AGFgQwASPt5EnowXQ7IelmqU1w_dEevcC4WNONTimkWwL_83-TQxM1jKhA&usqp=CAU',
            //     fit: BoxFit.cover,),
            //     title: Text('Knesics',
            //         style: GoogleFonts.courgette(
            //           color: Colors.white,
            //           letterSpacing: 2.0,
            //           fontSize: 40.0,
            //         )),
            //     centerTitle: true,
            //   ),
            // ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300.0,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 1.0,
              ),
              delegate: SliverChildListDelegate([

                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/happy.gif'),
                      )
                  ),
                ),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/applause.gif'),
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/stayhome.gif'),
                        fit: BoxFit.fill
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/cool.gif'),
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/tq.gif'),
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/sorry.gif'),
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pls.gif'),
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/sno.gif'),
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/suor.gif'),
                        fit: BoxFit.fill
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/nice to meet u.gif'),
                        fit: BoxFit.fill
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/hru.gif'),
                        fit: BoxFit.fill
                    )
                ),),
                Container(decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/hello.gif'),
                    )
                ),),],
              ),
            )
              ]),
      ),
    );
  }
}

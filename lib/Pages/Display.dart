import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 165.0,
          floating: true,
          backgroundColor: Colors.blueGrey[600],
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReT8ZduoTU0AGFgQwASPt5EnowXQ7IelmqU1w_dEevcC4WNONTimkWwL_83-TQxM1jKhA&usqp=CAU',
            fit: BoxFit.cover,),
            title: Text('Knesics',
                style: GoogleFonts.courgette(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 40.0,
                )),
            centerTitle: true,
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 350.0,
                crossAxisSpacing: 1.5,
                mainAxisSpacing: 1.0,
                childAspectRatio: 1.0,
          ),
          delegate: SliverChildListDelegate([
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/sorry.gif'),
                )
              ),
            ),
            Container(color: Colors.blue,)
          ]),
        ),
        SliverFixedExtentList(delegate: SliverChildListDelegate([
          Container(color: Colors.purpleAccent,)
          ]),
            itemExtent: 190.0),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
          ),
          delegate: SliverChildListDelegate([
            Container(color: Colors.white,),
            Container(color: Colors.white54),
            Container(color: Colors.white60,),
            Container(color: Colors.deepOrange,),
            Container(color: Colors.yellowAccent,),
            Container(color: Colors.purple,),
          ]),
        ),

        SliverFixedExtentList(delegate: SliverChildListDelegate([
          Container(color: Colors.cyan,),
          Container(color: Colors.cyanAccent,),
          Container(color: Colors.indigoAccent,),
        ]),
            itemExtent: 145.0),
        ]);
  }
}


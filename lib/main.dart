
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:knesics/Pages/Detection.dart';
import 'package:knesics/Pages/Display.dart';

import 'Pages/Home.dart';
import 'Pages/Splash.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, 
  ));
  runApp(MaterialApp(
    initialRoute: '/Splash',
    routes: {
      '/Splash': (context) => Splash(),
      '/Home': (context) => Home(),
      '/Detection': (context) => Detection(),
      '/Display': (context) => Display(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

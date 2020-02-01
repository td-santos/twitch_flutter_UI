import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitch_flutter/Home.dart';
import 'package:twitch_flutter/screens/SeguindoPage.dart';

main(List<String> args) {

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}



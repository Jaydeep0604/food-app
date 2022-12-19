import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/splashscreens/splashscreen.dart';
import 'package:foodapp/ui/homescreen.dart';
import 'package:foodapp/ui/nearrestlistscreen.dart';

  void main() { runApp(MyApp());}  
  
class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent ,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark, 
      
 ));

    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
             home:SplashScreen(),
             
    );
    
  }
}
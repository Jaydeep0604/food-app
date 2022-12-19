import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodapp/palette.dart';
import 'package:foodapp/splashscreens/splashscreen.dart';

class Loader extends StatefulWidget {
  const Loader({ Key? key }) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds:3),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => SplashScreen()  
            )  
         )  
    );  
  }  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
      children: [
        Stack(
          children: [
            Padding(
               padding: const EdgeInsets.only(top: 280),
               child: Container(
                 alignment: Alignment.center,
                 child: Image.asset("assets/FOOD.png",height: 150,width: 150,),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:385),
               child: Container(
                 alignment: Alignment.center,
                child: Text('No waiting for food',style: TextStyle(fontSize: 14,color: Palette.textColor),),
               ),
             )
          ],
        )
      ],
      )),
    );
  }
}
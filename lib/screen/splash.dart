 import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecprime/screen/home.dart';

 class Splash extends StatefulWidget {
   @override
   _SplashState createState() => _SplashState();
 }
 
 class _SplashState extends State<Splash> {

@override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 6)).then((_){
      Navigator.of(context).pushReplacement(
        // MaterialPageRoute(builder: (context) => Home())
        CupertinoPageRoute(builder: (context) => Home())
      );
    });

  }

   @override
   Widget build(BuildContext context) {
      return Scaffold(
       body: Container(
         child: Center(
            child: FlareActor('assets/sprite01.flr', animation: 'start', fit: BoxFit.fill, )
         ),
       ),
     );
   }
 }
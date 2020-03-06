 import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  String _anim = 'start';

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         child: Center(
            child: FlareActor('assets/sprite01.flr', animation: _anim, fit: BoxFit.fill, )
         ),
       ),
     );
   }
 }
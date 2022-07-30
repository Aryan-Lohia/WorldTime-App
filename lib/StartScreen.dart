import 'package:flutter/material.dart';

import '_DefaultSettings.dart';
class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);
  void load(BuildContext context) async
  {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/loading',arguments: defaultarea);
  }
  @override
  Widget build(BuildContext context) {
    load(context);
    return Scaffold(
        body:Container(color: Colors.black,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30,200,30,0),
              child: TweenAnimationBuilder(tween:Tween(begin: 5.0,end:1.0),
                  duration: const Duration(milliseconds: 800),
                  builder :(BuildContext context,double val,_)
                  {return Transform.scale(
                    scale: val,
                   child: Column(
                     children: [
                       Image.asset("assets/Logo.png",),
                       const SizedBox(height: 20,),
                       const Text("WORLD TIME",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: "myfont"),)
                     ],
                   ),);},

              ),
            ),
          ),
        )

    );
  }
}

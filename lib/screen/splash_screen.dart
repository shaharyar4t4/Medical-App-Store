import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicalapp/constant/colour.dart';
import 'package:medicalapp/screen/dashbored.dart';
import 'package:medicalapp/screen/onbroad.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onbroad()));
    }

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      body: Stack(children: [
        Container(
            width: 360,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/bgsplash.png'),
              fit: BoxFit.cover,
              opacity: 0.5),
        ),),
        const Positioned(
            child: Center(
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
          ),
        )),
        Positioned(child: Center(child: Image.asset('assets/image/lo.png'))),
        Positioned(
            bottom: 280,
            right: 112,
            child: Text("Quick Medical", style: TextStyle(color: Colors.white, fontSize: 23, fontStyle: FontStyle.italic),)),
      ]),
    );
  }
}

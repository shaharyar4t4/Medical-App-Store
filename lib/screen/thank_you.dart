import 'package:flutter/material.dart';
import 'package:medicalapp/constant/colour.dart';
import 'package:medicalapp/screen/main_bored.dart';
import 'package:medicalapp/screen/nav.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/pay.gif',),
            Container(
              child: Text("Thank for shopping :)", style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Nabbar()));
            }, child: Text("Back to Home", style: TextStyle(fontSize: 16, color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: BG),)
          ],
        ),
      ),
    );
  }
}

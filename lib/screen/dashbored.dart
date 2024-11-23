import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medicalapp/constant/colour.dart';
import 'package:medicalapp/screen/main_bored.dart';
import 'package:medicalapp/screen/nav.dart';
import 'package:medicalapp/screen/signup.dart';

class Dashbored extends StatefulWidget {
  const Dashbored({super.key});

  @override
  State<Dashbored> createState() => _DashboredState();
}

class _DashboredState extends State<Dashbored> {
  final TextEditingController Email = TextEditingController();
  final TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/logo.png'),

            Text(
              "Quick Medical",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Please Enter your Email & Password to Login",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: Email,
              decoration: InputDecoration(
                hintText: "Email@gmail.com",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: BG,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            TextField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "*******",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: BG,
                  ),
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
              },
              child: Text(
                "I have no Account. Need to SignUp",
                style: TextStyle(color: BG, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // ElevatedButton(onPressed: (){}, child: Text("Get Started"),)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 14),
                backgroundColor: btn,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                firbaselogin();
              },
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void firbaselogin() async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: Email.text,
        password: pass.text,
      );
      final snackBar = SnackBar(
        backgroundColor: Colors.lightGreenAccent,
        content: const Text('Your are login now...', style: TextStyle(color: Colors.black),),
        action: SnackBarAction(
          label: '',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Email.clear();
      pass.clear();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Nabbar()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: const Text('No user found for that email.', style: TextStyle(color: Colors.white),),
          action: SnackBarAction(
            label: '',
            onPressed: () {
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else if (e.code == 'wrong-password') {
        final snackBar = SnackBar(
          backgroundColor: Colors.lightBlueAccent,
          content: const Text('Wrong password provided for that user.', style: TextStyle(color: Colors.black),),
          action: SnackBarAction(
            label: '',
            onPressed: () {
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }
}

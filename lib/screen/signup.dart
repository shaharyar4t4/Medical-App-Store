import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medicalapp/constant/colour.dart';
import 'package:medicalapp/screen/dashbored.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailsig = TextEditingController();
  final TextEditingController passsig = TextEditingController();
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
              "Please Enter your Email & Password to Sign Up",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailsig,
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
              controller: passsig,
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashbored()));
              },
              child: Text(
                "Now you Need to Login",
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
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 14),
                backgroundColor: btn,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                createUserWithEmailAndPassword();
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashbored()));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void createUserWithEmailAndPassword() async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailsig.text,
        password: passsig.text,
      );
      final snackBar = SnackBar(
        backgroundColor: Colors.lightGreenAccent,
        content: const Text('User sucessfully added....', style: TextStyle(color: Colors.black),),
        action: SnackBarAction(
          label: '',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      emailsig.clear();
      passsig.clear();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: const Text('The password provided is too weak.', style: TextStyle(color: Colors.white),),
          action: SnackBarAction(
            label: '',
            onPressed: () {
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else if (e.code == 'email-already-in-use') {
        final snackBar = SnackBar(
          backgroundColor: Colors.lightBlueAccent,
          content: const Text('The account already exists for that email.', style: TextStyle(color: Colors.black),),
          action: SnackBarAction(
            label: '',
            onPressed: () {
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
      print(e);
    }
  }

}


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medicalapp/firebase_options.dart';
import 'package:medicalapp/screen/add_card.dart';
import 'package:medicalapp/screen/dashbored.dart';
import 'package:medicalapp/screen/onbroad.dart';
import 'package:medicalapp/screen/product_page.dart';
import 'package:medicalapp/screen/profile.dart';
import 'package:medicalapp/screen/signup.dart';
import 'package:medicalapp/screen/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: SplashScreen(),
    );
  }
}
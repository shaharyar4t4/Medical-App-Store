import 'package:flutter/material.dart';
import 'package:medicalapp/constant/colour.dart';
import 'package:medicalapp/screen/add_card.dart';
import 'package:medicalapp/screen/main_bored.dart';
import 'package:medicalapp/screen/product_page.dart';
import 'package:medicalapp/screen/profile.dart';

class Nabbar extends StatefulWidget {
  const Nabbar({super.key});

  @override
  State<Nabbar> createState() => _NabbarState();
}

class _NabbarState extends State<Nabbar> {
  int currentvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getCurrentView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentvalue,
        onTap: (value) {
          setState(() {
            currentvalue = value;
          });
        },
        selectedItemColor: BG,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.add, color: BG,), label: 'Add Product'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  getCurrentView() {
    if (currentvalue == 0) {
      return MainBored();
    } else if (currentvalue == 1) {
      return Container(
        child: Center(
            child: Text(
          "Not found Notification ;)",
          style: TextStyle(fontSize: 20),
        )),
      );
    } else if (currentvalue == 2) {
      return ProductPage();
    } else if (currentvalue == 3) {
      return AddCard();
    } else {
      return Profile();
    }
  }
}

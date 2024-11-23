import 'package:flutter/material.dart';
import 'package:medicalapp/constant/colour.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              "My Profile",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 8),
            child: Row(
              children: [
                Container(
                  width: 76, // Diameter of the circle
                  height: 76,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Makes the container circular
                    border: Border.all(
                      color: BG, // Border color
                      width: 3, // Border width
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/image/shaharyar.png',
                      // Replace with your image URL or asset
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Shaharyar",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ),
                    ),
                    Text(
                      "Welcome to Quick Medical Store",
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.list_alt_outlined,
                      color: BG,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Coupon Discount",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.file_copy_outlined,
                      color: BG,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "My orders",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_outlined,
                      color: BG,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Billing",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.question_mark,
                      color: BG,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Faq",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medicalapp/constant/colour.dart';
import 'package:medicalapp/screen/dashbored.dart';

class Onbroad extends StatefulWidget {
  const Onbroad({super.key});

  @override
  State<Onbroad> createState() => _OnbroadState();
}

class _OnbroadState extends State<Onbroad> {
  final PageController pageController = PageController();
  int currentIndex = 0;

  // for title
  final List<String> titles = [
    "View and Buy Medicine Online",
    "Swift Shipping, Right to Your Door!",
    "Hassle-Free Payment Choices",
  ];

  //description
  final List<String> descriptions = [
    "Effortlessly browse and buy medicines online in just a few clicks.",
    "Receive your medicines at your doorstep, fast and secure.",
    "Pick from multiple payment methods tailored for your convenience.",
  ];

  final List<String> image = [
    "assets/image/image.png",
    "assets/image/images.png",
    "assets/image/imagese.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // image, casual
          Expanded(
            child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          image[index],
                          height: 250, // Adjust height
                        ),
                        const SizedBox(height: 30),
                        Text(
                          titles[index],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: btn,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          descriptions[index],
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey.shade600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (coxtext)=> Dashbored()));
                  },
                  child: const Text("Skip", style: TextStyle(color: Colors.grey),),
                ),
                Row(
                  children: List.generate(
                    titles.length,
                        (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == index
                            ? btn
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == titles.length - 1) {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (coxtext)=> Dashbored()));
                    } else {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  child: Text(currentIndex == titles.length - 1
                      ? "Finish"
                      : "Next", style: TextStyle(color: btn),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

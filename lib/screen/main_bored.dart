import 'package:flutter/material.dart';
import 'package:medicalapp/constant/colour.dart';
import 'package:medicalapp/model/product_card.dart';

class MainBored extends StatefulWidget {
  const MainBored({super.key});

  @override
  State<MainBored> createState() => _MainBoredState();
}

class _MainBoredState extends State<MainBored> {
  final List<Map<String, String>> products = List.generate(
    10,
    (index) => {
      "name": "Accu-check Active Test Strip",
      "price": "Rs.112",
      "image": "assets/image/product.png", // Replace with your image URL
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 232,
              decoration: BoxDecoration(
                  color: bgban,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(22),
                      bottomLeft: Radius.circular(22))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Profile image
                      const Padding(
                        padding: EdgeInsets.only(left: 23, top: 20),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/image/shaharyar.png'),
                          radius: 30,
                        ),
                      ),
                      const Spacer(),
                      // Notification Icon
                      Stack(
                        children: [
                          const Icon(Icons.notifications, color: Colors.white),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 12),
                      // Cart Icon
                      const Icon(Icons.shopping_cart, color: Colors.white),
                      const SizedBox(width: 12),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Shaharyar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Welcome to Quick Medical Store',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search Medicine & Healthcare products',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 10),
              child: Text(
                "Top Categories",
                style: TextStyle(fontSize: 19),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 10),
              child: Row(
                children: [
                  Container(
                      width: 73,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                  width: 54,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFff7eb3),
                                    borderRadius: BorderRadius.circular(60),
                                  ))),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              "Dental",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 73,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                  width: 54,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0ba360),
                                    borderRadius: BorderRadius.circular(60),
                                  ))),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              "Wellness",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 73,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                  width: 54,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFfda085),
                                    borderRadius: BorderRadius.circular(60),
                                  ))),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              "Homeo",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 73,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                  width: 54,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8fd3f4),
                                    borderRadius: BorderRadius.circular(60),
                                  ))),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              "Eye care",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Image.asset('assets/image/homebn.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deals of the Day",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "More",
                    style: TextStyle(fontSize: 16, color: BG),
                  ),
                ],
              ),
            ),
            // show All product
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // Number of columns
                  childAspectRatio: 3 / 4,
                  // Adjust aspect ratio for card size
                  crossAxisSpacing: 8.0,
                  // Space between columns
                  mainAxisSpacing: 8.0, // Space between rows
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    name: products[index]["name"]!,
                    price: products[index]["price"]!,
                    imageUrl: products[index]["image"]!,
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medicalapp/constant/colour.dart';
import 'package:medicalapp/screen/add_card.dart';
import 'package:medicalapp/screen/main_bored.dart';
import 'package:medicalapp/screen/nav.dart';
import 'package:rating_summary/rating_summary.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<String> images = [
    "assets/image/productone.png",
    "assets/image/producttwo.png",
    "assets/image/productthree.png"
  ];
  final List<Map<String, String>> packages = [
    {'price': 'Rs.106', 'details': '500 pellets'},
    {'price': 'Rs.166', 'details': '110 pellets'},
    {'price': 'Rs.252', 'details': '300 pellets'},
  ];
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.8, // Adds spacing between items
  );

  int _currentPage = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Nabbar()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                  Row(
                    children: [
                      Stack(
                        children: [
                          const Icon(Icons.notifications_none,
                              color: Colors.black),
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
                                '•',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(Icons.shopping_bag_outlined, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Sugar Free Gold Low Calories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Etiam mollis metus non purus",
                style: TextStyle(fontSize: 13),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Column(children: [
              SizedBox(
                height: 150, // Set a fixed height for the carousel
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(images.length, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: _currentPage == index ? 10 : 7,
                    height: _currentPage == index ? 10 : 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == index ? BG : Colors.grey,
                    ),
                  );
                }),
              ),
            ]),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Text(
                    "Rs.99",
                    style: TextStyle(
                      fontSize: 19,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Rs.56",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Etiam mollis",
                    style: TextStyle(fontSize: 14),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_rounded,
                          color: BG,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Add to Card',
                          style: TextStyle(color: BG),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              endIndent: 20,
              indent: 20,
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                'Package size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(packages.length, (index) {
                  final package = packages[index];
                  final isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isSelected ? selected : Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Column(
                          children: [
                            SizedBox(height: 8,),
                            Text(
                              package['price']!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSelected ? selected : Colors.black,
                              ),
                            ),
                            Text(
                              package['details']!,
                              style: TextStyle(
                                fontSize: 14,
                                color: isSelected ? selected : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Product Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Ingredients',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Text("Expiry Date", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(width: 10,),
                  Text("25/12/2023", style: TextStyle( fontSize: 16,color: Colors.grey,),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 4),
              child: Row(
                children: [
                  Text("Brand Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(width: 10,),
                  Text("Something", style: TextStyle( fontSize: 16, color: Colors.grey,),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RatingSummary(
                counter: 923,
                average: 4.4,
                showAverage: true,
                counterFiveStars: 567,
                counterFourStars: 455,
                counterThreeStars: 355,
                counterTwoStars: 287,
                counterOneStars: 150,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   children: [
                     Icon(Icons.star, color: selected,),
                     SizedBox(width: 2,),
                     Text("4.2")
                   ],
                 ),
                  Text("05- oct 2020", style: TextStyle(fontSize: 14),)
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Erric Hoffman',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas ',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 14),
                  backgroundColor: btn,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddCard()));
                },
                child: Text(
                  "Go to Cart",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),

            ),
            SizedBox(height: 10,)

          ],
        ),
      )),
    );
  }
}

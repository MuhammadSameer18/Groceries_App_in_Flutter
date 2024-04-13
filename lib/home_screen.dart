import 'package:flutter/material.dart';
import 'package:groceriesapp/custtom_card.dart';
import 'package:groceriesapp/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> products = [
    {
      "title": "Organic Bananas",
      "price": 14.0,
      "qty": 7,
      "imagePath": "assets/image/Banana.png"
    },
    {
      "title": "Carrots",
      "price": 10.0,
      "qty": 5,
      "imagePath": "assets/image/gajar.png"
    },
    {
      "title": "Apples",
      "price": 20.0,
      "qty": 10,
      "imagePath": "assets/image/DhakaBanassre.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/gajar.png"),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/image/DhakaBanassre.png"),
            SizedBox(
              height: 15,
            ),
            SearchBox(),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Image.asset("assets/image/banner.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Exclusive Offer",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(fontSize: 15, color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomCard(
                    title: products[index]["title"],
                    price: products[index]["price"],
                    qty: products[index]["qty"],
                    imagePath: products[index]["imagePath"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

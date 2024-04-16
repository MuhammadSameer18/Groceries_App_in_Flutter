import 'package:flutter/material.dart';
import 'package:groceriesapp/custtom_card.dart';
import 'package:groceriesapp/search_box.dart';

class BestSellingScreen extends StatefulWidget {
  const BestSellingScreen({super.key});

  @override
  State<BestSellingScreen> createState() => _BestSellingScreenState();
}

class _BestSellingScreenState extends State<BestSellingScreen> {
  List<Map<String, dynamic>> products = [
    {
      "title": "Organic Bananas",
      "price": 14.0,
      "qty": 7,
      "imagePath": "assets/image/Banana.png"
    },
    {
      "title": "Red Apple",
      "price": 4.99,
      "qty": 1,
      "imagePath": "assets/image/apple.png"
    },
    {
      "title": "Demo",
      "price": 0,
      "qty": 0,
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
            Container(
              height: 240,
              child: ListView.builder(
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

import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final double price;
  final int qty;
  final String title;
  final String imagePath;

  CustomCard(
      {required this.title,
      required this.price,
      required this.qty,
      required this.imagePath});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      height: 248,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Image.asset(widget.imagePath),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 50),
            child: Text(
              "${widget.qty} pcs, Price: \$${widget.price.toString()}",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}

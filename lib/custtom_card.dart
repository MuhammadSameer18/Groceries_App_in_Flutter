import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final double price;
  final int qty;
  final String title;
  final String imagePath;

  CustomCard({
    required this.title,
    required this.price,
    required this.qty,
    required this.imagePath,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  int _currentQty = 0;
  double _currentPrice = 0;

  @override
  void initState() {
    super.initState();
    _currentQty = widget.qty;
    _currentPrice = widget.price * _currentQty;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      height: 240,
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
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.contain,
            ),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${_currentQty} pcs, Priceg",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "${widget.price.toString()}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 15),
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _currentQty *= 2;
                      _currentPrice = widget.price * _currentQty;
                    });
                  },
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add, color: Colors.white),
                  mini: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

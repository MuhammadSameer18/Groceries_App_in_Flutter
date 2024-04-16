import 'package:flutter/material.dart';

class BestSellingCard extends StatefulWidget {
  final double price;
  final int qty;
  final String title;
  final String imagePath;
  const BestSellingCard(
      {super.key,
      required this.price,
      required this.qty,
      required this.title,
      required this.imagePath});

  @override
  State<BestSellingCard> createState() => _BestSellingCardState();
}

class _BestSellingCardState extends State<BestSellingCard> {
  int _bscCurrentQty = 0;
  double _bscCurrentPrice = 0;
  @override
  void initState() {
    super.initState();
    _bscCurrentQty = widget.qty;
    _bscCurrentPrice = widget.price * _bscCurrentQty;
  }

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
            height: 80,
            width: 90,
            margin: EdgeInsets.only(top: 20),
            child: Image.asset(
              widget.imagePath,
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
                  "${_bscCurrentQty} pcs, Priceg",
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
                      _bscCurrentQty *= 2;
                      _bscCurrentPrice = widget.price * _bscCurrentQty;
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

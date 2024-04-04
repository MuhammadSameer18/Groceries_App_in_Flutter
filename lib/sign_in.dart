import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/image/MaskGroup.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Image.asset("assets/image/Getyourgrocerieswithnectar.png"),
            ],
          ),
          Column(
            children: [
              TextField(),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:groceriesapp/number.dart';
import 'package:groceriesapp/splash_screen.dart';

void main() {
  runApp(const groceriesapp());
}

class groceriesapp extends StatelessWidget {
  const groceriesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

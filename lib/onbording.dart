import 'package:flutter/material.dart';
import 'package:groceriesapp/sign_in.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/image/onbording.png",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset("assets/image/Welcometoourstore.png"),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/image/Geryourgroceriesinasfastasonehour.png"),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                    Size(330, 67),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

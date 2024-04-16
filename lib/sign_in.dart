import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceriesapp/number.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  final Uri _url = Uri.parse('https://flutter.dev');
  final AssetImage googleimage = AssetImage("assets/image/google.png");
  final AssetImage facebookimage = AssetImage("assets/image/facebook.png");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/image/MaskGroup.png"),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Image.asset("assets/image/Getyourgrocerieswithnectar.png"),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CountryScreen(),
                      ),
                    );
                  },
                  child: Image.asset("assets/image/countrypicker.png"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          Text(
            "Or connect with social media",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              launchUrlString("https://www.google.com/");
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(vertical: 15, horizontal: 70),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(
                  image: googleimage,
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Continue with Google",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              launchUrlString("https://www.facebook.com/");
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 3, 94, 169)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(vertical: 15, horizontal: 60),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(
                  image: facebookimage,
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Continue with Facebook",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

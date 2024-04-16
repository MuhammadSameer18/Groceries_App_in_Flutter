import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceriesapp/verification.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  final Uri _url = Uri.parse('https://flutter.dev');
  final AssetImage googleimage = AssetImage("assets/image/google.png");
  final AssetImage facebookimage = AssetImage("assets/image/facebook.png");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Enter Your Mobile Number",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              decoration: InputDecoration(
                labelText: "Mobile Number",
                prefixIcon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final code =
                              await countryPicker.showPicker(context: context);
                          setState(() {
                            countryCode = code;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              child: countryCode != null
                                  ? countryCode!.flagImage()
                                  : null,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text(
                                countryCode?.dialCode ?? "+1",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 300,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Verification(),
            ),
          );
        },
        child: Text(
          ">",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
  }
}

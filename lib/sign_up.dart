import 'package:flutter/material.dart';
import 'package:groceriesapp/custtom_card.dart';
import 'package:groceriesapp/email_textfield.dart';
import 'package:groceriesapp/home_screen.dart';
import 'package:groceriesapp/password_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/image/Rectangle17.png"),
                Container(
                  padding: EdgeInsets.only(left: 160, right: 150, top: 75),
                  child: Image.asset("assets/image/gajar.png"),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 200),
                  child: Image.asset("assets/image/signuptext.png"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: EmailTextField(isEmailvalid: true),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: PassTextField(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("By continuing you agree to our "),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms of Service",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("and"),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Privacy Policy.",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text("Sing Up"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(400, 50),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Already have an account?"),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sing Up",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

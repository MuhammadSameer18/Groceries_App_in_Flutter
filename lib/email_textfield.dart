import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  final bool isEmailvalid;
  const EmailTextField({super.key, required this.isEmailvalid});

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "Email",
        suffixIcon: widget.isEmailvalid
            ? Icon(
                Icons.check,
                color: Colors.green,
              )
            : null,
      ),
    );
  }
}

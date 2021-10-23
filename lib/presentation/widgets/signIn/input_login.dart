import 'package:flutter/material.dart';

class InputLogin extends StatelessWidget {
  final String textField;

  const InputLogin({
    Key? key,
    required this.textField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: textField,
        hintStyle: TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.solid,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(10),
      ),
    );
  }
}
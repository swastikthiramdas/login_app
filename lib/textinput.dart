import 'package:flutter/material.dart';
import 'colors.dart';

class TextInput extends StatelessWidget {
  TextInput(
      {super.key,
      required this.hinttext,
      required this.controller,
      this.password = false});

  final String hinttext;
  final controller;
  bool password;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        keyboardType: password
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        controller: controller,
        obscureText: password,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
            focusedBorder: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: ligthgrey,
              fontSize: 20.0,
            ),
            hintText: hinttext),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData img;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: PhysicalModel(
        color: const Color.fromRGBO(0, 0, 0, 0.25),
        elevation: 5.0,
        child: SizedBox(
          height: 44.0,
          width: 370.0,
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
                prefixIcon: Icon(img),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey[500])),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final String hintText;
  final bool obscureText;
  const LoginTextField(
      {super.key,
      required this.controller,
      required this.validator,
      required this.hintText,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.blueGrey,
          //fontSize: 15,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
    );
  }
}

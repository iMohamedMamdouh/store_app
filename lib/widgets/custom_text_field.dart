import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.hintText,
    this.onChanged,
    this.obscureText,
    this.inputType,
  });

  Function(String)? onChanged;

  String? hintText;
  bool? obscureText;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: TextField(
        keyboardType: inputType,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Color(0xFFE8E8E8)),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Color(0xFFE8E8E8)),
          ),
          filled: true,
          fillColor: const Color(0xFFF6F6F6),
        ),
      ),
    );
  }
}

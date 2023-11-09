import 'package:flutter/material.dart';
import '../styles/colors.dart';

Widget customTextField({
  required TextEditingController controller,
  int? maxLine = 1,
  bool autofocus = false,
  String? hint,
  Icon? sufix,
  required bool obSecureText,
  required Color borecolor,
  required TextInputType keyboardType,
  Function(String?)? onchange,
}) {
  return Card(
    color: inputColor,
    elevation: 1,
    child: TextField(
      autofocus: autofocus,
      onChanged: onchange,
      controller: controller,
      obscureText: obSecureText,
      maxLines: maxLine,
      cursorColor: primaryColor,
      style: const TextStyle(
        fontSize: 14,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        suffixIcon: sufix,
        suffixIconColor: grey,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: borecolor, width: 0),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        isDense: false,
        hintText: hint,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 12,
        ),
        fillColor: inputColor,
        filled: true,
        labelStyle: const TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.normal,
        ),
      ),
    ),
  );
}
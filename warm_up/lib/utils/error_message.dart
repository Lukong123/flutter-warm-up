import 'package:flutter/material.dart';

import '../styles/colors.dart';

void showErrorMessage({String? message, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message!,
        style: const TextStyle(
          color: whiteColor,
        ),
      ),
      backgroundColor: Colors.red,
    ),
  );
}
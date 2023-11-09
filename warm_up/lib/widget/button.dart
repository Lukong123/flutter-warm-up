import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../styles/colors.dart';

Widget customButton({
  VoidCallback? tap,
  Color? color,
  required Color borderColor,
  Color? textColor,
  String? text = 'Save',
  bool? status,
  bool? isValid = false,
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: status == true ? null : tap,
    child: status == false
        ? Card(
            elevation: 2,
            child: Container(
              height: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: status == false ? color : black,
                borderRadius: BorderRadius.circular(5.0),
                border: Border(
                  bottom: BorderSide(
                    color: borderColor,
                    style: BorderStyle.solid,
                  ),
                  top: BorderSide(
                    color: borderColor,
                    style: BorderStyle.solid,
                  ),
                  left: BorderSide(
                    color: borderColor,
                    style: BorderStyle.solid,
                  ),
                  right: BorderSide(
                    color: borderColor,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Text(
                status == false ? text as String : 'Please Wait',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: textColor,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        : const Center(child: SpinKitThreeBounce(color: primaryColor)),
  );
}
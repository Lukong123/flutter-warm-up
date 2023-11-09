import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color primaryColor = Color(0xff3751FF);
const Color whiteColor = Color(0xfff2f2f2);
const Color textColor = Color(0xff4B506D);
Color black = const Color(0xff171717);
Color grey = const Color(0xff777777);
Color lightgrey = const Color(0xfff5f5f5);
Color lightgreyColor = const Color(0xFF707070);
Color lightwhite = const Color(0xfffff9e7);
Color inputColor = const Color(0xFFF1F1F1);
Color lightblue = const Color(0xFFADD8E6);
Color lightorange = const Color(0xFFFED8B1);
Color lightpink = const Color(0xFFFFB6C1);
Color lightgreen = const Color(0xFFD1FFBD);




const systUiLight = SystemUiOverlayStyle(
  statusBarBrightness: Brightness.light,
  statusBarColor: primaryColor,
);

const systUiDark = SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark,
  statusBarColor: primaryColor,
);
// ignore_for_file: unnecessary_string_escapes

import 'package:warm_up/Screens/login.dart';
import 'package:warm_up/Screens/dashboard.dart';
import 'package:flutter/material.dart';




  void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold( 
        body: Login(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
 
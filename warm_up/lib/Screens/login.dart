import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warm_up/styles/colors.dart';
import 'package:warm_up/styles/fontstyle.dart';
import 'package:warm_up/widget/button.dart';
import 'package:warm_up/widget/inputField.dart';
import 'package:warm_up/Screens/dashboard.dart';
import '../../utils/error_message.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  clearInput() {
    phoneController.clear();
    passwordController.clear();
  }

  bool passwordVisible = true;
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void initState() {
    super.initState();
  }

 
  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/images/register1.svg',
              fit: BoxFit.fill,
              width: width,
            ),
            // Image.asset("assets/images/whitebg.jpg",
            // ),
            Positioned(
              bottom: 0,
              top: 50,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.14,
                    ),
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: headerStyle,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    customTextField(
                      sufix: const Icon(
                        Icons.phone_callback_sharp,
                        size: 20,
                        color: Colors.grey,
                      ),
                      hint: 'Phone number',
                      controller: phoneController,
                      obSecureText: false,
                      borecolor: Colors.transparent,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Card(
                      color: inputColor,
                      elevation: 1,
                      child: TextField(
                        controller: passwordController,
                        obscureText: passwordVisible,
                        cursorColor: primaryColor,
                        style: const TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              icon: Icon(
                                passwordVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                                size: 20,
                              )),
                          suffixIconColor: grey,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 0),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0),
                          ),
                          isDense: false,
                          hintText: 'Password',
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
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                          },
                          child: Text(
                            'Forgot Password ?',
                            textAlign: TextAlign.end,
                            style: hintStyle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    customButton(
                      tap: () {
                        if (phoneController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          showErrorMessage(
                            message: 'All fields are required',
                            context: context,
                          );
                        } else {
                          // something should be here
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Dashboard()),
  );
                        }
                      },
                      borderColor: primaryColor,
                      status: false,
                      text: 'Login',
                      textColor: whiteColor,
                      color: primaryColor,
                    ),
                    SizedBox(
                      height: height * 0.2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do not have an account ?',
                          style: hintStyle,
                        ),
                        SizedBox(
                          height: width * 0.01,
                        ),
                        TextButton(
                            onPressed: () {
                             
                            },
                            child: const Text(
                              'Register here',
                              style: TextStyle(
                                fontSize: 16,
                                color: primaryColor,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showDialogBox() => showCupertinoDialog<String>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text(
            'No Connection!',
            style: TextStyle(
              color: Colors.redAccent,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          content: const Text(
            'Please check your internet connectivity',
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                
              },
              child: const Text(
                'OK',
                style: TextStyle(
                  color: primaryColor,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      );
}
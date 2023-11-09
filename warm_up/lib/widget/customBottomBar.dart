import 'package:flutter/material.dart';
import 'package:warm_up/styles/colors.dart';

class MybotomBar extends StatelessWidget {
  MybotomBar({Key? key, required this.index, required this.tap})
      : super(key: key);
  Function(int) tap;
  int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: tap,
        currentIndex: index,
        backgroundColor: whiteColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: grey,
        iconSize: 28,
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.send,
            ),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.download_done,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.price_change,
            ),
            label: 'Price List',
          ),
        ]);
  }
}
import 'package:e_shop/utils/colors.dart';
import 'package:flutter/material.dart';

const kTitleStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
  color: Colors.white,
);
const kNormalStyle = TextStyle(
  height: 1.3,
  fontSize: 15,
  color: Colors.black,
  fontWeight: FontWeight.w700,
);

List<Widget> buildIndicator() {
  List<Widget> list = [];
  for (int i = 0; i < 4; i++) {
    list.add(i == 1 ? indicator(true) : indicator(false));
  }
  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    duration: Duration(microseconds: 150),
    height: 8.0,
    width: isActive ? 30 : .80,
    decoration: BoxDecoration(
      color: isActive? OrangeColor: Colors.grey,
      borderRadius: BorderRadius.circular(30)
    ),
  );
}

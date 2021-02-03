import 'package:flutter/material.dart';
import 'package:studio_mar/size_config.dart';

const kPrimaryColor = Color(0xFF01202E);
const kPrimaryLightColor = Color(0xFFC7D4D8);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF01202E), Color(0xFFC7D4D8)],
);
const kSecondaryColor = Color(0xFF3A5F6F);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

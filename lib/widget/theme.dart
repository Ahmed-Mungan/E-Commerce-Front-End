import 'package:flutter/material.dart';

class Themes {
  TextStyle get headline1 {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'Acme-Regular',
    );
  }

  TextStyle get headline2 {
    return TextStyle(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontFamily: 'SecularOne-Regular',
    );
  }

  TextStyle get headline3 {
    return TextStyle(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontFamily: 'Adamina-Regular',
    );
  }

  TextStyle get headline4 {
    return TextStyle(
      fontSize: 50,
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontFamily: 'OleoScriptSwashCaps-Regular',
    );
  }
}

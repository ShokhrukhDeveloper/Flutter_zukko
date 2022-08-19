import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppFonts {
  AppFonts._();

  static TextStyle light({
    required double size,
    required Color color,
  }) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle regular({
    required double size,
    required Color color,
  }) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium({
    required double size,
    required Color color,
  }) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }
}

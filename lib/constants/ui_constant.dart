import 'package:flutter/widgets.dart';

// Constants that has been used across the screens
class UiConstants {
  static const BoxDecoration backgroundGradient = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xff130F40),
        Color(0xff000000),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );

  static Widget image(
      {BoxFit fit = BoxFit.cover,
      double height = 24,
      double width = 24,
      required String path}) {
    return Image.asset(
      path,
      fit: fit,
      height: height,
      width: width,
    );
  }
}

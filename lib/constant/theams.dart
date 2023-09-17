import 'package:flutter/material.dart';

//this method to convert Colors
extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

final bg = '887BE6'.toColor();
final mainbg = '312963'.toColor();
final secbtn = 'E1DDFB'.toColor();
final main2 = '8F81F2'.toColor();
final elembg = 'F7F6FF'.toColor();
final navbg = 'F9F8FE'.toColor();

class DarkTheme {
  static ThemeData themeData = ThemeData.dark().copyWith(
      // Customize the dark theme properties
      primaryColor: Colors.white,
      focusColor: Colors.white60,
      iconTheme: IconThemeData(color: Colors.white),
      canvasColor: Colors.black54,
      hintColor: Colors.white12,
      highlightColor: Colors.white12,
      hoverColor: Colors.black,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ))),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textTheme: TextTheme(
        // headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(color: Colors.white),
      ),
      navigationBarTheme: NavigationBarThemeData(
          backgroundColor: mainbg,
          indicatorColor: Color.fromARGB(255, 233, 216, 194),
          labelTextStyle:
              MaterialStateProperty.all(const TextStyle(color: Colors.white))));
  // colorScheme: ColorScheme.fromSwatch()
  //     .copyWith(secondary: Colors.yellow)
  //     .copyWith(background: Colors.black));
  // final   navigationBarTheme: NavigationBarThemeData(
  //     backgroundColor: const Color.fromARGB(255, 212, 121, 1),
  //     indicatorColor: const Color.fromARGB(255, 243, 200, 106),
  //     labelTextStyle: MaterialStateProperty.all(

  //         const TextStyle(fontSize: 14, fontWeight: FontWeight.w800)));
}

class LightTheme {
  static ThemeData themeData = ThemeData.light().copyWith(
      // Customize the light theme properties
      primaryColor: Colors.black,
      focusColor: Colors.black54,
      highlightColor: main2,
      canvasColor: Colors.white,
      hintColor: elembg,
      hoverColor: elembg,
      iconTheme: IconThemeData(color: mainbg),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        )),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textTheme: TextTheme(
        // headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(color: Colors.black),
      ),
      navigationBarTheme: NavigationBarThemeData(
          backgroundColor: navbg,
          indicatorColor: Color.fromARGB(255, 233, 216, 194),
          labelTextStyle:
              MaterialStateProperty.all(const TextStyle(color: Colors.black)))
      // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
      );
}

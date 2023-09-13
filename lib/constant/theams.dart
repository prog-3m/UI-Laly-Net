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

class MyThemes {
  static final darkTheme = ThemeData(
      // colorScheme.b: Colors.white24,
      scaffoldBackgroundColor: Colors.white24,
      primaryColor: const Color.fromARGB(255, 212, 121, 1),
      canvasColor: const Color.fromARGB(255, 216, 211, 211),
      colorScheme: const ColorScheme.dark(),
      iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 212, 121, 1), opacity: 0.8),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
          backgroundColor: const Color.fromARGB(255, 212, 121, 1),
          indicatorColor: const Color.fromARGB(255, 243, 200, 106),
          labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w800))));
  static final lightTheme = ThemeData(
      // textTheme: GoogleFonts.alikeTextTheme(
      //     //Theme.of(context).textTheme,
      //     ),
      //  backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: const Color.fromARGB(255, 69, 19, 100),
      canvasColor: const Color.fromARGB(255, 109, 109, 109),
      colorScheme: const ColorScheme.light(),
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 69, 19, 100)),
      //  bottomAppBarColor: Colors.purple,
      navigationBarTheme: NavigationBarThemeData(
          backgroundColor: main2,
          indicatorColor: const Color.fromARGB(255, 69, 19, 100),
          labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w800))));
}

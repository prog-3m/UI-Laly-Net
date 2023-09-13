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

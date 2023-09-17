import 'package:flutter/material.dart';
import 'package:flutter_application_1/screenUI/main_screen.dart';

import 'constant/theams.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: LightTheme.themeData, // Apply the light theme
      darkTheme: DarkTheme.themeData, // Apply the dark theme
      themeMode: ThemeMode.system,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const MainPage(),
    );
  }
}

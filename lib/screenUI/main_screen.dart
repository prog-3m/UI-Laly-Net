import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/theams.dart';
import '../screenWiFiUI/home_page.dart';

import '../screenWiFiUI/radius.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  @override
  void initState() {
    super.initState();
    screen;
    setState(() {});
  }

  final screen = [
    const HomePage(),
    const RadiusScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      bottomNavigationBar: NavigationBarTheme(
        data: Theme.of(context).navigationBarTheme,
        child: NavigationBar(
            //backgroundColor: navbg,
            height: 70,
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() {
                  this.index = index;
                }),
            destinations: const [
              NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    color: Colors.orange,
                  ),
                  label: 'Home'),
              NavigationDestination(
                  icon: Icon(
                    Icons.grid_view_rounded,
                    color: Colors.orange,
                  ),
                  label: 'Radius'),
            ]),
      ),

      body: screen[index],
    );
  }
}

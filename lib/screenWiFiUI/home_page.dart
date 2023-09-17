import 'package:flutter/material.dart';

import '../constant/theams.dart';
import '../screenUI/setting.dart';
import '../widgetUI/circle_progress.dart';
import '../widgetUI/nav_botton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: mainbg,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'lale Net',
          style: TextStyle(color: Colors.orange),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Setting()),
              );
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.orange,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              width: screenWidth,
              height: screenHeight / 2.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'You are connected to WIFI',
                    style: TextStyle(
                      color: elembg,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                  Text(
                    '"WIFI name"',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const CircularProgressIndicatorWithIcon(
                    icon: Icons.wifi,
                    progress: 70,
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.8,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenWidth * 0.1),
                  topRight: Radius.circular(screenWidth * 0.1),
                ),
              ),
              child: const Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  NavBotton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

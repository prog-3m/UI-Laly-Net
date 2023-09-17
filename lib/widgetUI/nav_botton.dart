import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgetUI/ping_widget.dart';
import 'package:flutter_application_1/widgetUI/speed_widget.dart';

import '../constant/theams.dart';
import 'info_widget.dart';

class NavBotton extends StatefulWidget {
  const NavBotton({Key? key}) : super(key: key);

  @override
  State<NavBotton> createState() => _NavBottonState();
}

class _NavBottonState extends State<NavBotton> {
  final PageController pageController =
      PageController(initialPage: 0, keepPage: false);
  int activePage = 0;

  final List<Widget> pages = [
    const InfoPage(),
    const PingWidget(),
    const SpeedWidget(),
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List<Widget>.generate(
            pages.length,
            (index) => TextButton(
              onPressed: () {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                );
              },
              child: Container(
                height: 40,
                width: screenWidth * 0.25,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: activePage == index ? main2 : Colors.black,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: activePage == index ? main2 : Colors.white,
                ),
                child: Center(
                  child: Text(
                    getPageTitle(index),
                    style: TextStyle(
                      color: activePage == index ? Colors.white : main2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
          height: MediaQuery.of(context).size.height / 1.5,
          //color: Theme.of(context).canvasColor,
          width: screenWidth * 0.9,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            onPageChanged: (int page) {
              setState(() {
                activePage = page;
              });
            },
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return pages[index % pages.length];
            },
          ),
        ),
      ],
    );
  }

  String getPageTitle(int index) {
    switch (index) {
      case 0:
        return 'INFO';
      case 1:
        return 'Ping';
      case 2:
        return 'Speed';
      default:
        return '';
    }
  }
}

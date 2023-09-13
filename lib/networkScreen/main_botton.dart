import 'package:flutter/material.dart';

import '../constant/theams.dart';
import '../widgetUI/ping_widget.dart';
import '../widgetUI/speed_widget.dart';

class MainButton extends StatefulWidget {
  const MainButton({
    super.key,
  });
  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  final PageController pageController =
      PageController(initialPage: 0, keepPage: false);

  int activePage = 0;
  bool end = false;
  final List<Widget> pages = [
    // const InfoPage(),
    const PingWidget(),
    const SpeedWidget()
  ];

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
                1,
                (index) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color:
                                    activePage == index ? main2 : Colors.white,
                                border: Border.all()),
                            child: TextButton(
                                onPressed: () {
                                  pageController.animateToPage(index,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeOut);
                                },
                                //  onPressed: => isFirst ?null :togglePage(),
                                child: Text(
                                  'PING',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: activePage == index
                                          ? Colors.white
                                          : main2),
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color: activePage == 1 ? main2 : Colors.white,
                                border: Border.all()),
                            child: TextButton(
                                onPressed: () {
                                  pageController.animateToPage(1,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeOut);
                                },
                                child: Text(
                                  'Speed',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        activePage == 1 ? Colors.white : main2,
                                  ),
                                )),
                          )
                        ],
                      ),
                    )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            width: 320,
            child: PageView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int page) {
                setState(() {
                  activePage = page;
                });
              },
              itemCount: pages.length,
              itemBuilder: ((context, index) {
                return pages[index % pages.length];
              }),
            ),
          ),
        ],
      );
}

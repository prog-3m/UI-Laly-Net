import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/theams.dart';
import 'package:flutter_application_1/screenUI/setting.dart';

import '../widgetUI/ping_widget.dart';
import '../widgetUI/speed_widget.dart';
import 'main_botton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFirstPage = true;
  @override
  Widget build(BuildContext context) {
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: mainbg,
                child: Column(
                  children: [
                    Text(
                      'You are connection to',
                      style: TextStyle(color: elembg, fontSize: 18),
                    ),
                    const Text('mobile data',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) => const RadialGradient(
                        center: Alignment.topCenter,
                        stops: [.8, 1],
                        colors: [
                          Colors.orange,
                          Colors.white,
                        ],
                      ).createShader(bounds),
                      child: const Icon(
                        Icons.mobiledata_off_outlined,
                        size: 65,
                      ),
                    ),
                    // Icon(
                    //   Icons.mobiledata_off_outlined,
                    //   size: 65,
                    //   color: Colors.orange,
                    // ),
                  ],
                ),
              ),
              // Positioned(
              //   top: MediaQuery.of(context).size.height * 0.2,
              //   left: MediaQuery.of(context).size.width * 0.0,
              //   child:
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.width * 0.1),
                    topRight: Radius.circular(
                        MediaQuery.of(context).size.width * 0.1),
                    //,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      // buildButtons(),
                      MainButton()
                      // Expanded(child: buildCards()),
                    ],
                    //),
                  ),
                ),
              ),
              // Positioned(
              //     top: MediaQuery.of(context).size.height * 0.2,
              //     left: MediaQuery.of(context).size.width * 0.0,
              //     child: Container(
              //       padding: EdgeInsets.all(8),
              //       width: MediaQuery.of(context).size.width,
              //       height: MediaQuery.of(context).size.height / 1.5,
              //       //  color: Colors.amberAccent,
              //       child: Column(
              //         children: <Widget>[
              //           buildButtons(),
              //           Expanded(child: buildCards()),
              //         ],
              //       ),
              //     ))
            ],
          ),
        ));
  }

  Widget buildCards() => PageTransitionSwitcher(
        duration: const Duration(milliseconds: 2000),
        reverse: isFirstPage,
        transitionBuilder: (child, animation, secondaryAnimation) =>
            SharedAxisTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: SharedAxisTransitionType.horizontal,
          child: child,
        ),
        child: isFirstPage ? const PingWidget() : const SpeedWidget(),
      );

  Widget buildButtons() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: isFirstPage
                      ? main2
                      : const Color.fromARGB(255, 228, 227, 227),
                  border: Border.all()),
              child: TextButton(
                  onPressed: () => isFirstPage ? null : togglePage(),
                  //  onPressed: => isFirst ?null :togglePage(),
                  child: Text(
                    'PING',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isFirstPage ? Colors.white : main2,
                    ),
                  )),
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: isFirstPage
                      ? const Color.fromARGB(255, 228, 227, 227)
                      : main2,
                  border: Border.all()),
              child: TextButton(
                  onPressed: () => isFirstPage ? togglePage() : null,
                  child: Text(
                    'Speed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isFirstPage ? main2 : Colors.white,
                    ),
                  )),
            )
          ],
        ),
      );

  void togglePage() => setState(() => isFirstPage = !isFirstPage);
}

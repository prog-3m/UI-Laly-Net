// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import '../constant/theams.dart';
import 'info_server.dart';

class MainScreenRadius extends StatelessWidget {
  final VoidCallback openWidget1;
  final VoidCallback openWidget2;
  const MainScreenRadius(
      {super.key, required this.openWidget1, required this.openWidget2});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          height: 50,
        ),
        textButton('Internet Server Info', () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const InfoServer()));
        }, mainbg, screenWidth),
        textButton('Cheack another User', () {
          openWidget2();
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => CheakUser()));
        }, bg, screenWidth),
        textButton('Cheack another Companys domain', () {
          openWidget1();
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => CheackCompanyDomain()));
        }, bg, screenWidth),
      ],
    );
  }

  Widget textButton(
      String txt, Function() fnc, Color color, double screenWidth) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        onPressed: fnc,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          height: 50,
          width: screenWidth * 0.8,
          decoration: BoxDecoration(
            border: Border.all(color: main2),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: color,
          ),
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final fontSize = constraints.maxWidth * 0.04;

                return Text(
                  txt,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// enum WidgetType {
//   MainScreenRadius,
//   CheackCompanyDomain,
//   CheakUser,
// }

// class _HomePageState extends State<HomePage> {
//   WidgetType activeWidget = WidgetType.MainScreenRadius;

//   void openWidget1() {
//     setState(() {
//       activeWidget = WidgetType.CheackCompanyDomain;
//     });
//   }

//   void openWidget2() {
//     setState(() {
//       activeWidget = WidgetType.CheakUser;
//     });
//   }

//   void closeWidget() {
//     setState(() {
//       activeWidget = WidgetType.MainScreenRadius;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget activeContent;

//     switch (activeWidget) {
//       case WidgetType.CheackCompanyDomain:
//         activeContent = Widget1(closeWidget: closeWidget);
//         break;
//       case WidgetType.CheakUser:
//         activeContent = Widget2(closeWidget: closeWidget);
//         break;
//       default:
//         activeContent =
//             MainContent(openWidget1: openWidget1, openWidget2: openWidget2);
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: activeContent,
//     );
//   }
// }

// class MainContent extends StatelessWidget {
//   final VoidCallback openWidget1;
//   final VoidCallback openWidget2;

//   MainContent({required this.openWidget1, required this.openWidget2});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text('This is the main content of the page.'),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: openWidget1,
//           child: Text('Open Widget 1'),
//         ),
//         ElevatedButton(
//           onPressed: openWidget2,
//           child: Text('Open Widget 2'),
//         ),
//       ],
//     );
//   }
// }

// class Widget1 extends StatelessWidget {
//   final VoidCallback closeWidget;

//   Widget1({required this.closeWidget});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text('This is Widget 1.'),
//         ElevatedButton(
//           onPressed: closeWidget,
//           child: Text('Close Widget'),
//         ),
//       ],
//     );
//   }
// }

// class Widget2 extends StatelessWidget {
//   final VoidCallback closeWidget;

//   Widget2({required this.closeWidget});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text('This is Widget 2.'),
//         ElevatedButton(
//           onPressed: closeWidget,
//           child: Text('Close Widget'),
//         ),
//       ],
//     );
//   }
// }

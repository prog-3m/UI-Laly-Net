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

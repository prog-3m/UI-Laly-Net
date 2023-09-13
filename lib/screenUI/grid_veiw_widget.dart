import 'package:flutter/material.dart';

import '../constant/theams.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    final double iconSize = MediaQuery.of(context).size.width * 0.16;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Some Of Isps Service',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Divider(
          indent: 90,
          endIndent: 100,
          color: main2,
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //childAspectRatio: 5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3),
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: iconSize,
                      width: iconSize,
                      decoration: BoxDecoration(
                        color: main2,
                        border: Border.all(),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(150),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(iconSize * 0.15),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(iconSize * 0.5),
                            child: Image.asset('assest/cinamana.png')),
                      ),
                    ),
                    const Text(
                      'Cinemana Shabakty',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]);
            },
          ),
        ),
      ],
    );
  }
}

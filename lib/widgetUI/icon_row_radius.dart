import 'package:flutter/material.dart';

import '../constant/theams.dart';

class IconRowRadius extends StatefulWidget {
  const IconRowRadius({super.key});

  @override
  State<IconRowRadius> createState() => IconRowRadiusState();
}

class IconRowRadiusState extends State<IconRowRadius> {
  int selectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    final double iconSize = MediaQuery.of(context).size.width * 0.16;

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        'SERVICES',
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Divider(
        indent: 90,
        endIndent: 100,
        color: main2,
      ),
      SizedBox(
          height: 90,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assest/earthlink-preview_image.png',
          )),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIcon = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: iconSize,
                      width: iconSize,
                      decoration: BoxDecoration(
                        color: main2,
                        border: Border.all(
                          color: selectedIcon == 0
                              ? Colors.black
                              : Colors.transparent,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(150),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(iconSize * 0.15),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(iconSize * 0.5),
                            child: Image.asset('assest/cinamana.png')
                            //Image.asset('assest/cinemana.png'),
                            ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Cinemana Shabakty',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIcon = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: iconSize,
                      width: iconSize,
                      decoration: BoxDecoration(
                        color: main2,
                        border: Border.all(
                          color: selectedIcon == 1
                              ? Colors.black
                              : Colors.transparent,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(150),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(iconSize * 0.15),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(iconSize * 0.5),
                            child: Image.asset(
                              'assest/tv.png',
                              width: iconSize * 0.7,
                              height: iconSize * 0.7,
                            )
                            //),
                            ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'TV Shabakty',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          wordSpacing: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIcon = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: iconSize,
                      width: iconSize,
                      decoration: BoxDecoration(
                        color: main2,
                        border: Border.all(
                          color: selectedIcon == 2
                              ? Colors.black
                              : Colors.transparent,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(150),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(iconSize * 0.15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(iconSize * 0.5),
                          child: Image.asset(
                            'assest/shear.png',
                            width: iconSize * 0.7,
                            height: iconSize * 0.7,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'share Shabakty',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
          onTap: () {
            setState(() {
              selectedIcon = 3;
            });
          },
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: iconSize,
              width: iconSize,
              decoration: BoxDecoration(
                  color: main2,
                  border: Border.all(
                    color:
                        selectedIcon == 0 ? Colors.black : Colors.transparent,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              child: Padding(
                padding: EdgeInsets.all(iconSize * 0.15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(iconSize * 0.5),
                  child: Image.asset(
                    'assest/music.png',
                    width: iconSize * 0.7,
                    height: iconSize * 0.7,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Music Shabakty',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]))
    ]);
  }
}

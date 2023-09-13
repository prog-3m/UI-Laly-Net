import 'package:flutter/material.dart';

import '../constant/theams.dart';

class InfoServer extends StatefulWidget {
  const InfoServer({super.key});

  @override
  State<InfoServer> createState() => _InfoServerState();
}

class _InfoServerState extends State<InfoServer> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      //backgroundColor: mainbg,
      body: Stack(
        children: [
          Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: screenHeight / 2.5,
                width: screenWidth,
                color: mainbg,
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    Text(
                      'WELCOME',
                      style: TextStyle(
                        fontSize: screenWidth * 0.1,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rusul@gmail.com',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: screenHeight / 1.7,
                width: screenWidth,
              ),
            ],
          ),
          Positioned(
            top: screenHeight * 0.3,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 1),
                      blurRadius: 15,
                      spreadRadius: 1)
                ],
                // border: Border.all(color: main2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              height: screenHeight / 1.7,
              width: screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    listTile('Services price:', '45000 IQD', 'assest/tv.png',
                        screenWidth * 0.04),
                    listTile('active days remaining:', '31 day',
                        'assest/tv.png', screenWidth * 0.04),
                    listTile('Service profile:', 'Economy', 'assest/tv.png',
                        screenWidth * 0.04),
                    listTile('Service Expiration date:', '24/9/2023',
                        'assest/tv.png', screenWidth * 0.04),
                    listTile('Service status:', 'active', 'assest/tv.png',
                        screenWidth * 0.04),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.03,
            right: screenWidth * 0.1,
            left: screenWidth * 0.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: mainbg,
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1,
                  vertical: screenHeight * 0.015,
                ),
              ),
              onPressed: () {},
              // icon: const Icon(Icons.gps_fixed_outlined),
              child: Text(
                'Done',
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listTile(txt1, txt2, imgurl, scfont) {
    return Column(
      children: [
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              color: elembg,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(imgurl),
                ),
              ),
            ),
          ),
          title: Text(
            txt1,
            style: TextStyle(
              fontSize: scfont,
              //screenWidth * 0.04,
              color: Colors.grey[600],
              //fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            txt2,
            style: TextStyle(
              fontSize: scfont,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Divider(
          color: Colors.grey,
          indent: 10,
          endIndent: 50,
        ),
      ],
    );
  }
}

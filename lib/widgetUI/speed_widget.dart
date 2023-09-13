import 'package:flutter/material.dart';

import 'liner_progress.dart';

class SpeedWidget extends StatelessWidget {
  const SpeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      //color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            'Internet speed test',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text('DOWNLOAD',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.normal)),
          const SizedBox(height: 20),
          const LinearProgressIndicatorPage(),
        ],
      ),
    );
  }
}

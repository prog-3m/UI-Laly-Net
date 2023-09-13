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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            'Internet speed test',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text('DOWNLOAD',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
          SizedBox(height: 20),
          LinearProgressIndicatorPage(),
        ],
      ),
    );
  }
}

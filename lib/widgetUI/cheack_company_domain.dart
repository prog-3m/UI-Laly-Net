import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/theams.dart';

class CheackCompanyDomain extends StatelessWidget {
  const CheackCompanyDomain({super.key, required this.closeWidget});
  final VoidCallback closeWidget;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                closeWidget();
              },
              icon: Icon(
                CupertinoIcons.chevron_left_circle_fill,
                color: mainbg,
                size: screenWidth * 0.07,
              ),
            ),
            const Text('Your ISP is Not Register With Us'),
          ],
        ),
        SizedBox(
          height: 50,
          width: screenWidth * 0.8,
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelText: 'User Control Panel Domain',
              labelStyle: const TextStyle(color: Colors.black45),
              focusedBorder: const OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.2,
              vertical: 12,
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Check Domain',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Some Of ISPs Domain',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: main2,
            padding: const EdgeInsets.all(8),
          ),
          onPressed: () {},
          child: const Text(
            'earthlink',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/theams.dart';

class CheakUser extends StatefulWidget {
  const CheakUser({
    super.key,
    required this.closeWidget,
    required this.openScre,
  });

  final VoidCallback closeWidget;
  final VoidCallback openScre;

  @override
  State<CheakUser> createState() => _CheakUserState();
}

class _CheakUserState extends State<CheakUser> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetwe,
              children: [
                IconButton(
                  onPressed: () {
                    widget.closeWidget();
                  },
                  icon: Icon(
                    CupertinoIcons.chevron_left_circle_fill,
                    color: mainbg,
                    size: screenWidth * 0.07,
                  ),
                ),
                Text(
                  'http://earthlink.iq',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: screenWidth * 0.8,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: 'User Control Panel Domain',
                  labelStyle: const TextStyle(color: Colors.black45),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 50,
              width: screenWidth * 0.8,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'User Control Panel Domain',
                  labelStyle: const TextStyle(color: Colors.black45),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: mainbg,
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.3,
                  vertical: 2,
                ),
              ),
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1,
                  vertical: 5,
                ),
              ),
              onPressed: widget.openScre,
              child: Text(
                'Check another company domain',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

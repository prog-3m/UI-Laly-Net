import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/theams.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

bool val = false;

class _SettingState extends State<Setting> {
  bool isWidgetOpen = false;
  bool isWidgetOpen2 = false;
  bool isWidgetOpen3 = false;
  void openWidget() {
    setState(() {
      isWidgetOpen = true;
    });
  }

  void closeWidget() {
    setState(() {
      isWidgetOpen = false;
    });
  }

  void openWidget1() {
    setState(() {
      isWidgetOpen2 = true;
    });
  }

  void closeWidget1() {
    setState(() {
      isWidgetOpen2 = false;
    });
  }

  void openWidget3() {
    setState(() {
      isWidgetOpen3 = true;
    });
  }

  void closeWidget3() {
    setState(() {
      isWidgetOpen3 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainbg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            SizedBox(
              height: screenHeight / 3.5,
              width: screenWidth,
              child: Column(
                children: [
                  Text(
                    'SETTING',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.orange),
                    ),
                    child: Switch(
                      value: val,
                      onChanged: (bool value) {
                        setState(() {
                          val = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    val ? 'Light Mood' : 'Dark Mood',
                    style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: screenHeight / 1.6,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      settingWidget(
                        'Language',
                        Icons.language,
                        isWidgetOpen ? closeWidget : openWidget,
                        isWidgetOpen ? closeWidget : openWidget,
                      ),
                      settingWidget(
                        'About Us',
                        Icons.info,
                        isWidgetOpen3 ? closeWidget3 : openWidget3,
                        isWidgetOpen3 ? closeWidget3 : openWidget3,
                      ),
                      settingWidget(
                        'Contact Us',
                        Icons.call,
                        isWidgetOpen2 ? closeWidget1 : openWidget1,
                        isWidgetOpen2 ? closeWidget1 : openWidget1,
                      ),
                    ],
                  ),
                ),
                if (isWidgetOpen)
                  const Positioned(
                      top: 110,
                      left: 20,
                      right: 20,
                      child: LanguageSelectionDialog()),
                if (isWidgetOpen2)
                  Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: ConactUs(
                        func: closeWidget1,
                      )),
                if (isWidgetOpen3)
                  Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: AboutUs(
                        func: closeWidget3,
                      )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget settingWidget(txt, icon, onTap, func) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: main2),
          ),
          child: ListTile(
            onTap: onTap,
            leading: Icon(
              icon,
              color: Colors.orange,
            ),
            title: Text(txt),
            titleAlignment: ListTileTitleAlignment.center,
            trailing: IconButton(
              onPressed: func,
              icon: Icon(
                Icons.arrow_forward_ios,
                color: main2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageSelectionDialog extends StatefulWidget {
  const LanguageSelectionDialog({super.key});

  @override
  State<LanguageSelectionDialog> createState() =>
      _LanguageSelectionDialogState();
}

class _LanguageSelectionDialogState extends State<LanguageSelectionDialog> {
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.3,
      decoration: BoxDecoration(
        color: elembg,
        borderRadius: BorderRadius.circular(15),
      ),
      child: AlertDialog(
        backgroundColor: elembg,
        // alignment: Alignment(10, 120),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        // title: Text(
        //   'Language Selection',
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioListTile(
              activeColor: Colors.orange,
              title: const Text('Arabic'),
              value: 'Arabic',
              groupValue: selectedLanguage,
              onChanged: (value) {
                setState(() {
                  // selectedLanguage = value;
                });
              },
            ),
            RadioListTile(
              activeColor: Colors.orange,
              title: const Text('English'),
              value: 'English',
              groupValue: selectedLanguage,
              onChanged: (value) {
                setState(() {
                  //selectedLanguage = value;
                });
              },
            ),
          ],
        ),
        // actions: [
        //   TextButton(
        //     onPressed: () {
        //       Navigator.of(context).pop(selectedLanguage);
        //     },
        //     child: Text('OK'),
        //   ),
        // ],
      ),
    );
  }
}

class ConactUs extends StatefulWidget {
  const ConactUs({super.key, required this.func});
  final func;
  @override
  State<ConactUs> createState() => _ConactUsState();
}

class _ConactUsState extends State<ConactUs> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: AnimatedContainer(
        // Use the properties stored in the State class.
        width: screenWidth * 0.9,
        height: screenHeight * 0.6,
        decoration: BoxDecoration(
          color: elembg,
          borderRadius: BorderRadius.circular(10),
        ),
        // Define how long the animation should take.
        duration: const Duration(seconds: 1),
        // Provide an optional curve to make the animation feel smoother.
        curve: Curves.fastOutSlowIn,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: main2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: widget.func,
                          icon: const Icon(
                            CupertinoIcons.chevron_left_circle_fill,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        Text(
                          'Conact Us',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'For ISPS',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: main2),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Your ISP is Not Register With Us Your ISP is Not Register With Us Your ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'For Users',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: main2),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Your ISP is Not Register With Us Your ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      Text(
                        'info@lale.app',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: main2),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class AboutUs extends StatefulWidget {
  const AboutUs({super.key, required this.func});
  final func;
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: AnimatedContainer(
        // Use the properties stored in the State class.
        width: screenWidth * 0.9,
        height: screenHeight * 0.6,
        decoration: BoxDecoration(
          color: elembg,
          borderRadius: BorderRadius.circular(10),
        ),
        // Define how long the animation should take.
        duration: const Duration(seconds: 1),
        // Provide an optional curve to make the animation feel smoother.
        curve: Curves.fastOutSlowIn,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: main2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: widget.func,
                          icon: const Icon(
                            CupertinoIcons.chevron_left_circle_fill,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        Text(
                          'About Us',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Your ISP is Not Register With Us Your ISP is Not Register With Us Your ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With Us',
                    style: TextStyle(
                        // fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        // color: main2
                        ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  // Text(
                  //   'Your ISP is Not Register With Us Your ISP is Not Register With Us Your ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With Us',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'App Features',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: main2),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '1.Your ISP is Not Register With Us Your ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '2.Your ISP is Not Register With Us Your ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  const Text(
                    '3.Your ISP is Not Register With Us Your ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  const Text(
                    '4.Your ISP is Not Register With Us Your ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With UsYour ISP is Not Register With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Icon(
                  //       Icons.email,
                  //       color: Colors.orange,
                  //     ),
                  //     Text(
                  //       'info@lale.app',
                  //       style: TextStyle(
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold,
                  //           color: main2),
                  //     ),
                  //   ],
                  // ),
                ]),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/theams.dart';
import 'package:flutter_application_1/screenUI/setting.dart';

import 'main_screen_radius.dart';
import '../widgetUI/cheac_users.dart';
import '../widgetUI/cheack_company_domain.dart';
import '../widgetUI/icon_row_radius.dart';

class RadiusScreen extends StatefulWidget {
  const RadiusScreen({
    super.key,
  });
  @override
  State<RadiusScreen> createState() => _RadiusScreenState();
}

enum WidgetType {
  MainScreenRadius(),
  CheackCompanyDomain(),
  CheakUser(),
}

class _RadiusScreenState extends State<RadiusScreen> {
  WidgetType activeWidget = WidgetType.MainScreenRadius;

  void openWidget1() {
    setState(() {
      activeWidget = WidgetType.CheackCompanyDomain;
    });
  }

  void openWidget2() {
    setState(() {
      activeWidget = WidgetType.CheakUser;
    });
  }

  void closeWidget() {
    setState(() {
      activeWidget = WidgetType.MainScreenRadius;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeContent;

    switch (activeWidget) {
      case WidgetType.CheackCompanyDomain:
        activeContent = CheackCompanyDomain(closeWidget: closeWidget);
        break;
      case WidgetType.CheakUser:
        activeContent =
            CheakUser(closeWidget: closeWidget, openScre: openWidget1);
        break;
      default:
        activeContent = MainScreenRadius(
            openWidget1: openWidget1, openWidget2: openWidget2);
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'lale Net',
          style: TextStyle(color: Colors.orange),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
              icon: Icon(
                Icons.settings,
                color: Colors.orange,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                child: Column(
                  children: [
                    //  PageRaduisOne(),
                    activeContent
                    // MainScreenRadius(),
                    // NavBotton()
                    // CheakUser()
                  ],
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                color: mainbg,
                borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(MediaQuery.of(context).size.width * 0.1),
                  topRight:
                      Radius.circular(MediaQuery.of(context).size.width * 0.1),
                  //,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  IconRowRadius()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

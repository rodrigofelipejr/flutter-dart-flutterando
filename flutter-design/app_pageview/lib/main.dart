import 'package:app_pageview/HomeWidget.dart';
import 'package:app_pageview/page-view-controller.builder.dart';
import 'package:app_pageview/page-view.basic.dart';
import 'package:app_pageview/page-view.builder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PageView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageViewBasic(),
      // home: PageViewBuilder(),
      // home: PageViewBuilderController(), // BUG
    );
  }
}

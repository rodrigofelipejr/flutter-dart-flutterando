import 'package:flutter/material.dart';

class PageViewBuilder extends StatefulWidget {
  @override
  _PageViewBuilderState createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  // List<Widget> pages = [
  //   Center(child: Text("Page 1")),
  //   Center(child: Text("Page 2")),
  //   Center(child: Text("Page 3")),
  // ];

  List<String> pages = [
    "Batata",
    "Cenoura",
    "Manjericão",
    "Batata",
    "Cenoura",
    "Manjericão",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        centerTitle: true,
      ),
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          // return pages[index];
          return Center(
            child: Text(
              pages[index],
            ),
          );
        },
      ),
    );
  }
}

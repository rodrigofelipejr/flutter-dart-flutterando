import 'package:flutter/material.dart';

class PageViewBuilder extends StatefulWidget {
  @override
  _PageViewBuilderState createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  List<String> pages = [
    "Home",
    "Favoritos",
    "Perfil",
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

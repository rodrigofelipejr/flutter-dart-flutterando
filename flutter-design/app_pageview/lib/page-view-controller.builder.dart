import 'package:flutter/material.dart';

class PageViewBuilderController extends StatefulWidget {
  @override
  _PageViewBuilderControllerState createState() =>
      _PageViewBuilderControllerState();
}

class _PageViewBuilderControllerState extends State<PageViewBuilderController> {
  List<String> pages = [
    "Batata",
    "Cenoura",
    "Manjericão",
  ];

  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);

    print("initState");

    controller.addListener(() {
      print("Mudou de página: ${controller.page}");
      print("Mudou de página -> ${controller.page.round()}");
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        actions: [
          IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              controller.previousPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOutBack,
              );
              print("PREVIOUS");
            },
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              controller.jumpTo(0);
              print("NEXT");
            },
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {
              controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOutBack,
              );
              print("NEXT");
            },
          ),
        ],
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

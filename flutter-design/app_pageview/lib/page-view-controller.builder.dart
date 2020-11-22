import 'package:flutter/material.dart';

class PageViewBuilderController extends StatefulWidget {
  @override
  _PageViewBuilderControllerState createState() => _PageViewBuilderControllerState();
}

class _PageViewBuilderControllerState extends State<PageViewBuilderController> {
  PageController controller;
  int currentIndex = 0;

  List<String> pages = [
    "Home",
    "Favoritos",
    "Perfil",
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);

    /// Attach a listener which will update the state and refresh the page index
    controller.addListener(() {
      print("controller.page ${controller.page.round()}");

      if (controller.page.round() != currentIndex) {
        setState(() {
          print("setState");
          currentIndex = controller.page.round();
        });
      }
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
                duration: Duration(milliseconds: 200),
                curve: Curves.easeInOutBack,
              );
              print("PREVIOUS");
            },
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              controller.jumpToPage(0);
              print("HOME");
            },
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {
              controller.nextPage(
                duration: Duration(milliseconds: 200),
                curve: Curves.easeInOutBack,
              );
              print("NEXT");
            },
          ),
        ],
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          // return pages[index];
          return Center(child: Text(pages[index]));
        },
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget child) {
          return BottomNavigationBar(
            onTap: (index) {
              controller.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeInOutBack);
            },
            currentIndex: 0,
            // currentIndex: controller.page.round(),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Favoritos", icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(label: "Conta", icon: Icon(Icons.account_box)),
            ],
          );
        },
      ),
    );
  }
}

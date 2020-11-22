import 'package:flutter/material.dart';

class PageViewBasic extends StatefulWidget {
  @override
  _PageViewBasicState createState() => _PageViewBasicState();
}

class _PageViewBasicState extends State<PageViewBasic> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        centerTitle: true,
      ),
      body: PageView(
        // reverse: true,
        // physics: ClampingScrollPhysics(),
        onPageChanged: (pageInt) {
          print("Page: $pageInt");
        },
        scrollDirection: Axis.horizontal,
        children: [
          Center(
            child: Text("Home"),
          ),
          Center(
            child: Text("Favoritos"),
          ),
          Center(
            child: Text("Perfil"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:material_navigation/config.view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              textColor: Colors.white,
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ConfigView();
                    },
                  ),
                );
              },
              child: Text("Next View - Replacement"),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.purple,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ConfigView();
                    },
                  ),
                );
              },
              child: Text("Next View"),
            )
          ],
        ),
      ),
    );
  }
}

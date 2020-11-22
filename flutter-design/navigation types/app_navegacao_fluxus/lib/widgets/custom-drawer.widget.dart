import 'package:app_navegacao/src/home/pages/home.controller.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: StreamBuilder<int>(
        initialData: 0,
        stream: HomeController.of(context).drawerChangeOutput,
        builder: (context, snapshot) {
          return ListView(
            children: [
              ListTile(
                selected: snapshot.data == 0,
                title: Text("Início"),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(0);
                },
              ),
              ListTile(
                selected: snapshot.data == 1,
                title: Text("Favaritos"),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(1);
                },
              ),
              ListTile(
                selected: snapshot.data == 2,
                title: Text("Conta"),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(2);
                },
                // selected: pageController.page.round() == 2,
              ),
              ListTile(
                title: Text("Sair"),
              ),
            ],
          );
        },
      ),
    );
  }
}

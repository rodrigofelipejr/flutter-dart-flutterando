import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function(int) onPressed;
  final PageController pageController;

  const CustomDrawer({Key key, this.onPressed, this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Início"),
            onTap: () => onPressed(0),
            selected: pageController.page.round() == 0,
          ),
          ListTile(
            title: Text("Favaritos"),
            onTap: () => onPressed(1),
            selected: pageController.page.round() == 1,
          ),
          ListTile(
            title: Text("Conta"),
            onTap: () => onPressed(2),
            selected: pageController.page.round() == 2,
          ),
          ListTile(
            title: Text("Sair"),
          ),
        ],
      ),
    );
  }
}

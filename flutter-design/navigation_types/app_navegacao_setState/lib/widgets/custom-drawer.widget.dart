import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function(int) onPressed;

  const CustomDrawer({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Início"),
            onTap: () => onPressed(0),
          ),
          ListTile(
            title: Text("Favaritos"),
            onTap: () => onPressed(1),
          ),
          ListTile(
            title: Text("Conta"),
            onTap: () => onPressed(2),
          ),
          ListTile(
            title: Text("Sair"),
          ),
        ],
      ),
    );
  }
}

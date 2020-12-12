import 'package:app_navegacao/src/home/pages/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        HomeController.of(context).drawerChangeInput.add(1);
      },
      child: Center(
        child: Text(
          "Ir para favoritos",
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}

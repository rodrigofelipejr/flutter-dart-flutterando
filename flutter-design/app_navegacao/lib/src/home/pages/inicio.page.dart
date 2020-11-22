import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Inicio Page",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}

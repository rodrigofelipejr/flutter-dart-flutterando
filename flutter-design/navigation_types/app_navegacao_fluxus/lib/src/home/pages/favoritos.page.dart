import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoritosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Favoritos Page",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}

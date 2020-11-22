import 'package:app_navegacao/src/home/pages/conta.page.dart';
import 'package:app_navegacao/src/home/pages/favoritos.page.dart';
import 'package:app_navegacao/src/home/pages/inicio.page.dart';
import 'package:app_navegacao/widgets/custom-drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();

  var pages = <Widget>[
    InicioPage(),
    FavoritosPage(),
    ContaPage(),
  ];

  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyScaffold,
      appBar: AppBar(
        title: Text("Navegação"),
      ),
      body: pages[indexPage],
      drawer: CustomDrawer(
        onPressed: (index) {
          _keyScaffold.currentState.openEndDrawer();
          setState(
            () {
              indexPage = index;
            },
          );
        },
      ),
    );
  }
}

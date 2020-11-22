import 'package:app_navegacao/src/home/pages/conta.page.dart';
import 'package:app_navegacao/src/home/pages/favoritos.page.dart';
import 'package:app_navegacao/src/home/pages/home.controller.dart';
import 'package:app_navegacao/src/home/pages/inicio.page.dart';
import 'package:app_navegacao/widgets/custom-drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pages = <Widget>[
    InicioPage(),
    FavoritosPage(),
    ContaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    print("carregando...");
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegação"),
      ),
      drawer: CustomDrawer(),
      body: StreamBuilder<int>(
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return pages[snapshot.data];
        },
        initialData: 0,
        stream: HomeController.of(context).drawerChangeOutput,
      ),
    );
  }
}

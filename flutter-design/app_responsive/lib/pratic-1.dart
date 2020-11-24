import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int index = 0;

  _onTap(int _index, bool isSmartphone) {
    if (isSmartphone) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(index: _index)));
    } else {
      setState(
        () {
          this.index = _index; // NÃO RECOMENDADO ALTERAR DESTA FORMA
        },
      );
    }
  }

  Widget _layoutSmartphone({bool isSmartphone = true}) {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (BuildContext context, int _index) {
        return ListTile(
          title: Text("Item número: $_index"),
          onTap: () {
            _onTap(_index, isSmartphone);
          },
        );
      },
    );
  }

  Widget _layoutTablet() {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: _layoutSmartphone(isSmartphone: false),
          ),
          Expanded(
            flex: 2,
            child: SecondScreen(
              index: index,
              isSmartphone: false,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 400) {
            return _layoutSmartphone();
          } else {
            return _layoutTablet();
          }
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final int index;
  final bool isSmartphone;

  const SecondScreen({Key key, this.index, this.isSmartphone = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFbedbbb),
      appBar: isSmartphone
          ? AppBar(
              title: Text("Second Screen"),
            )
          : null,
      body: Center(
        child: Text("Item número $index"),
      ),
    );
  }
}

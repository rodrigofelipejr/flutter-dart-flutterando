import 'package:flutter/material.dart';

class SampleLayoutBuilder extends StatefulWidget {
  @override
  _SampleLayoutBuilderState createState() => _SampleLayoutBuilderState();
}

class _SampleLayoutBuilderState extends State<SampleLayoutBuilder> {
  double setResponsive({double value, double min, double max}) {
    if (value < max && value > min) {
      return value;
    } else if (value < min) {
      return min;
    } else {
      return max;
    }
  }

  Widget _getQuadrado({Color color}) {
    MediaQueryData media = MediaQuery.of(context);
    Size size = media.size;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 200,
        minHeight: 200,
        maxHeight: 400,
        maxWidth: 400,
      ),
      child: Container(
        width: size.width * 0.50,
        height: size.height * 0.25,
        color: color,
        alignment: Alignment.center,
        child: Text(
          "Lagura: ${size.width} - Altura: ${size.height}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            // fontSize: size.width * 0.06,
            fontSize: setResponsive(
              value: size.width * 0.03, // valor de referência
              min: 12,
              max: 24,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    Size size = media.size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 412) {
              return _getQuadrado(
                color: Colors.pink[500],
              );
            } else {
              return _getQuadrado(
                color: Colors.blue[500],
              );
            }
          },
        ),
      ),
    );
  }
}

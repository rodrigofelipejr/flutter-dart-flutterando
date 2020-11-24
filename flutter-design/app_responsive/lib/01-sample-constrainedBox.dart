import 'package:flutter/material.dart';

class SampleConstrainedBox extends StatelessWidget {
  double setResponsive({double value, double min, double max}) {
    if (value < max && value > min) {
      return value;
    } else if (value < min) {
      return min;
    } else {
      return max;
    }
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
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 200,
            minHeight: 200,
            maxHeight: 400,
            maxWidth: 400,
          ),
          child: Container(
            width: size.width * 0.50,
            height: size.height * 0.25,
            color: Colors.red,
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
        ),
      ),
    );
  }
}

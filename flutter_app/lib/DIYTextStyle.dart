import 'package:flutter/material.dart';


void main() => runApp(new ConstText());

const textStyle = const TextStyle(
  fontFamily: 'Roboto',
  color: Colors.orange,
);

class ConstText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(const Radius.circular(5.0)),
          border: new Border.all(width: 2.0,color: Colors.blue),
        ),
        child: new Text(
          'Hello Word',
          style: textStyle,
          textDirection: TextDirection.ltr,
        ),
        width: 300.0,
        height: 300.0,
      ),
    );
  }
}

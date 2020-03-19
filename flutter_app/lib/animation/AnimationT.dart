import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(new LogoApp());

class LogoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LogoState();
}

class _LogoState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;

  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: animation.value,
        width: animation.value,
        child: new FlutterLogo(),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}

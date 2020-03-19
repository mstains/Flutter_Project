import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';


void main() =>runApp(new LogoApp());

class GrowTransition extends StatelessWidget {
  final Widget child;
  final Animation animation;

  GrowTransition(this.child, this.animation);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget child) {
          return new Container(
            width: animation.value,
            height: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}

class LogoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LogoAppState();
  }
}

class _LogoAppState extends State<LogoApp> with TickerProviderStateMixin {
  Animation animation;

  AnimationController controller;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GrowTransition( new LogoWidget(), animation);
  }

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(duration : const Duration(milliseconds: 2000),vsync: this);
    final CurvedAnimation cure = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = new Tween(begin: 0.0,end: 300.0).animate(cure);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}


class LogoWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      child: new FlutterLogo(),
    );
  }

}
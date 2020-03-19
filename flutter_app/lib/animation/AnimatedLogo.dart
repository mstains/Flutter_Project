import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main() => runApp(new LogoApp());

//AnimatedWidget组件封装
class AnimatedLogo extends AnimatedWidget {
  static final __opacityTween = new Tween(begin: 0.1, end: 1.0);

  static final __sizeTween = new Tween(begin: 0.0, end: 300.0);

  AnimatedLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;

    // TODO: implement build
    return new Center(

//      child: new Container(
//        child: new FlutterLogo(),
//        margin: EdgeInsets.symmetric(vertical: 10.0),
//        width: animation.value,
//        height: animation.value,
//      ),
    //增加透明度 0透明 1不透明
      child: new Opacity(
        opacity: __opacityTween.evaluate(animation),
        child: new Container(
          child: new FlutterLogo(),
          margin: EdgeInsets.symmetric(vertical: 10.0),
          width: __sizeTween.evaluate(animation),
          height: __sizeTween.evaluate(animation),
        ),
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

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController controller;

  Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new AnimatedLogo(animation: animation);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //初始化AnimationController
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    //初始化Animation,增加多个动画效果，放大机渐变透明
     animation = new CurvedAnimation(parent: controller, curve: Curves.easeIn)
     //初始化Animation
    //animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
      //监听动画过程
      ..addStatusListener((value) {
        print("$value");
        //动画结束
        if (value == AnimationStatus.completed) {
          //反转动画，由大变小
          controller.reverse();
        }
        //动画结束重新开始
        else if (value == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    //..addStatusListener((state) => print("$state"));
    //启动动画
    controller.forward();
  }

  @override
  void dispose() {
    //界面关闭结束动画
    controller.dispose();
    super.dispose();
  }
}

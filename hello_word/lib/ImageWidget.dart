import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "图片加载",
      home: new ImageDemo(),
    ));

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Image.network(

        "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1962026963,30944310&fm=26&gp=0.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}

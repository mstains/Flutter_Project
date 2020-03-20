import 'package:flutter/material.dart';

void main() => runApp(new FloatingActionButtonPage());

class FloatingActionButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('啦啦啦'),
        ),
        body: new Center(
          child: Text(
            'FloatingActionButton示例',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
        floatingActionButton: new Builder(builder: (BuildContext context) {
          return new FloatingActionButton(
            child: const Icon(Icons.add),

            tooltip: '啦啦啦',
            //前景色为白色
            foregroundColor: Colors.white,
            //背景色
            backgroundColor: Colors.blue,
            //未点击阴影
            elevation: 7.0,
            //点击阴影值
            highlightElevation: 14.0,

            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('你好呀'),
                //显示时间设置成1000毫秒
                duration: Duration(milliseconds: 1000),
              ));
            },

            mini: false,
            shape: new CircleBorder(),
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

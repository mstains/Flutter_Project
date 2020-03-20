import 'package:flutter/material.dart';

void main() =>runApp(TextFieldPage());

class TextFieldPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      print('输入的内容是：${_controller.text}');
    });

    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('TextField'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _controller,
              maxLength: 30,
              maxLines: 1,
              //是否自动更正
              autocorrect: true,
              //是否自动对焦
              autofocus: true,
              //文本对齐方式
              textAlign: TextAlign.left,
              //是否是密码
              obscureText: false,
              //是否禁用
              enabled: true,
              decoration: InputDecoration(

                //去掉下划线
                border: InputBorder.none,
                fillColor: Colors.grey.shade200,
                filled: true,
                //helperText: '用户名',
                hintText: '请输入用户名',
                //左侧图标
                prefixIcon: Icon(Icons.person),
                suffixText: '用户名',

              ),

            ),
          ),
        ),
      ),
    );
  }
}

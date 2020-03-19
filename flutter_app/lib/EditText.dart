import 'package:flutter/material.dart';

void main() => runApp(new LoginPage());

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  //用户名
  String userName;

  //密码
  String passWord;

  void login() {
    var loginForm = loginKey.currentState;

    if (loginForm.validate()) {
      loginForm.save();
      print('userName:' + userName + ' passWord: ' + passWord);

      if((userName != null) && (passWord != null)){


      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(


      routes: {
        '/Frist' : (BuildContext context) => LoginPage(),
      },
      initialRoute: '/Frist',

      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Form表单示例'),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(16.0),
              child: new Form(
                key: loginKey,
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(labelText: '请输入用户名'),
                      onSaved: (value) {
                        userName = value;
                      },
                      onFieldSubmitted: (value) {
                        print('onFieldSubmitted:' + value);
                      },
                      onChanged: (value) {
                        print('onChanged:' + value);
                      },
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: '请输入密码',
                      ),

                      //密码加密显示
                      obscureText: true,
                      //验证表单方法
                      validator: (value) {
                        return value.length < 6 ? '密码长度不够6位' : null;
                      },
                      onSaved: (value) {
                        passWord = value;
                      },
                    )
                  ],
                ),
              ),
            ),
            new SizedBox(
              width: 340.0,
              height: 42.0,
              child: new RaisedButton(
                onPressed: login,
                child: Text(
                  '登录',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

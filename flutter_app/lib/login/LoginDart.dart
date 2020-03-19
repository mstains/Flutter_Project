import 'package:flutter/material.dart';

class LoginDart extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginState();
  }

}


class _LoginState extends State<LoginDart>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(

      body: new Center(

        child: new RaisedButton(

          child: Text('跳转首页'),

            onPressed: (){

            Navigator.pushNamed(context, '/HomeDart');

            }),


      ),

    );
  }



}
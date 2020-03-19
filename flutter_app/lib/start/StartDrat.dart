import 'package:flutter/material.dart';
import 'package:flutterapp/home/HomeDart.dart';
import 'package:flutterapp/login/LoginDart.dart';


void main() => runApp(new Start());

class Start extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(

      routes: {
        '/Start' : (BuildContext context) => ImageStart(),
        '/Login' : (BuildContext context) => LoginDart(),
        '/HomeDart' : (BuildContext context) => HomeDart(),
      },

      initialRoute: '/Start',

    );
  }
}




class ImageStart extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ImageStart();
  }

}

class _ImageStart extends State<ImageStart>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  
    return new Scaffold(
      
      body: new Center(
        
      child: new IconButton(icon: Icon(Icons.star,size: 48.0,), onPressed: (){

        Navigator.pushNamed(context, '/Login');


      }),
        
        
      ),
      
      
    );
  }


}
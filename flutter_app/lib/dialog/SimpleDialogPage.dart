import 'package:flutter/material.dart';


void main() =>runApp(SimpleDialogPage());

class SimpleDialogPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(

      home: new Scaffold(

        appBar: AppBar(
          title: Text('SimpleDialog示例'),

        ),
        body: new Center(

          child: new SimpleDialog(

            title: Text('标题'),

            titlePadding: const EdgeInsets.all(10.0),

            contentPadding: const EdgeInsets.all(5.0),

            children: <Widget>[

              SimpleDialogOption(

                child: const Text('第一行'),

                onPressed: (){

                  print('第一行');
                },

              ),
              SimpleDialogOption(

                child: const Text('第二行'),

                onPressed:(){
                  print('第二行');
                },


              )

            ],


          ),


        ),

      ),
    );
  }



}
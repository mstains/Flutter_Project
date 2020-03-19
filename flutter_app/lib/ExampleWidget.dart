import 'package:flutter/material.dart';

void main() =>runApp(new TextExampleWidget());



class TextExampleWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(


      home: new Scaffold(

        body: new Container(

          child: new ExampleWidget(),
        ),

      ),


    );
  }

}


class ExampleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ExampleWidgetState();
  }
}

class _ExampleWidgetState extends State<ExampleWidget> {
  final TextEditingController _editingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TextField(
          controller: _editingController,
          decoration: new InputDecoration(hintText: '啦啦啦'),
        ),
        new RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text('你好呀'),
                  content: new Text(_editingController.text),
                ));
          },
          child: new Text("DONE"),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(CardPage());

class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(


      home: new Scaffold(

        appBar: AppBar(

          title: Text('Card示例'),
          //标题居中
          centerTitle: true,

        ),

        body: new SizedBox(
          height: 200.0,
          child: new Card(
            child: new Column(

              children: <Widget>[

                new ListTile(
                  title: Text('杭州市上城区',style: TextStyle(fontWeight: FontWeight.w300),),
                  subtitle: Text('西湖'),
                  leading: Icon(Icons.home,color: Colors.lightBlue,),
                ),
                new Divider(),

                new ListTile(
                  title: Text('杭州市滨江区',style: TextStyle(fontWeight: FontWeight.w300),),
                  subtitle: Text('钱塘江'),
                  leading: Icon(Icons.home,color: Colors.lightBlue,),
                ),
                new Divider(),


              ],


            ),

          ),

        ),


      ),

    );
  }



}
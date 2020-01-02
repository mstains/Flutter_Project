import 'package:flutter/material.dart';

void main() =>runApp(new ContainerClass());

class ContainerClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      title: "容器组件",

      home: new Scaffold(
        appBar: AppBar(
          title: Text("容器组件"),

        ),

        body: Center(

          //添加容器
          child: Container(
            width: 200.0,
            height: 200.0,

            //添加边框装饰效果
            decoration: BoxDecoration(

              color: Colors.white,

              border: new Border.all(
                color: Colors.orange,
                width: 1.0,
              ),
              borderRadius: const BorderRadius.all(const Radius.circular(8.0)),

            ),
            child: Center(
              child: Text(
                "啦啦啦",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0,color: Colors.blue),
              ),


            ),

          ),


        ),
      ),

    );
  }

}
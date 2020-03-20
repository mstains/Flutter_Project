import 'package:flutter/material.dart';


void main() => runApp(PopupMenuButtonPage());

enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class PopupMenuButtonPage extends StatelessWidget {
  final List<PopupMenuItem> _list = [
    const PopupMenuItem(
      child: Text('添加成员'),
      value: ConferenceItem.AddMember,
    ),
    const PopupMenuItem(
      child: Text('锁定会议'),
      value: ConferenceItem.LockConference,
    ),
    const PopupMenuItem(
      child: Text('修改布局'),
      value: ConferenceItem.ModifyLayout,
    ),
    const PopupMenuItem(
      child: Text('挂断所有'),
      value: ConferenceItem.TurnoffAll,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('PopupMenuButton示例'),
        ),
        body: Center(
          child: FlatButton(
              onPressed: () {}, child: PopupMenuButton(itemBuilder: (BuildContext context){


                return <PopupMenuEntry<ConferenceItem>>[

                  const PopupMenuItem(
                    child: Text('添加成员'),
                    value: ConferenceItem.AddMember,
                  ),
                  const PopupMenuItem(
                    child: Text('锁定会议'),
                    value: ConferenceItem.LockConference,
                  ),
                  const PopupMenuItem(
                    child: Text('修改布局'),
                    value: ConferenceItem.ModifyLayout,
                  ),
                  const PopupMenuItem(
                    child: Text('挂断所有'),
                    value: ConferenceItem.TurnoffAll,
                  ),

                ];

          })),
        ),
      ),
    );
  }
}

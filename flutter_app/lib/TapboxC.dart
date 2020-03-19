import 'package:flutter/material.dart';



void main() =>runApp(ParentWidget());

class ParentWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _ParentState();



}


class _ParentState extends State<ParentWidget>{

  bool _active = false;

  void _handleTapboxChanged(bool newValue){

    setState(() {

      _active = newValue;

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(

      child: TapboxC(active : _active,onChanged: _handleTapboxChanged),


    );
  }

}




class TapboxC extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapboxC({Key key, this.active: false, @required this.onChanged});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TapboxcState();
  }
}

class _TapboxcState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: new Text(
            widget.active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: widget.active ? Colors.orange[700] : Colors.red[600],
            border: _highlight
                ? new Border.all(
                    color: Colors.teal[700],
                    width: 10.0,
                  )
                : null),
      ),
    );
  }
}

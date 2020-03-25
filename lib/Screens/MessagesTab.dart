import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessagesTab extends StatefulWidget {
  @override
  _MessagesTabState createState() => _MessagesTabState();
}

class _MessagesTabState extends State<MessagesTab> {
  bool _messagesSelected ;
  
  @override
  void initState() {
    super.initState();
    _messagesSelected = true ;
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Container(
          height: ScreenUtil().setHeight(115.0),
          // color: Colors.indigo,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Text(
                "Messages",
                style: new TextStyle(fontSize: ScreenUtil().setSp(50.0),fontWeight: FontWeight.w500,
                  color: Colors.blueGrey.shade200
                ),
              ),
              new VerticalDivider(
                width: 0,
                thickness: 2,
                endIndent: ScreenUtil().setHeight(20.0),
                indent: ScreenUtil().setHeight(20.0),
                color: Colors.blueGrey.shade100,
              ),
              new Text(
                "  Feed  ",
                style: new TextStyle(fontSize: ScreenUtil().setSp(50.0),fontWeight: FontWeight.w500,color: Colors.blueGrey.shade200),
              )
            ],
          ),
        ),
        new Divider(
          height: 1,
          thickness: 2,
          color: Colors.blueGrey.shade50,
        ),
        // Based on which section does it selected .
        
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TinderTab extends StatefulWidget {
  @override
  _TinderTabState createState() => _TinderTabState();
}

class _TinderTabState extends State<TinderTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          color: Colors.white,
        ),
        new Positioned(
          bottom: 0.0,
          child: new Container(
            height: ScreenUtil().setWidth(220.0),
            width: MediaQuery.of(context).size.width,
            color: Colors.purpleAccent,
            child: new Row(
              children: <Widget>[
                
              ],
            ),
          ),
        ),
        new Align(
          alignment: Alignment.topCenter,
          child: new Padding(
              padding: EdgeInsets.only(top: ScreenUtil().setWidth(15.0)),
              child: new Draggable(child: _userCard(), feedback: _userCard())),
        )
      ],
    );
  }

  Widget _userCard() {
    return new Material(
      child: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              boxShadow: [
                new BoxShadow(
                    color: Colors.grey.shade700,
                    offset: new Offset(0.0, 5.0),
                    blurRadius: 15.0)
              ],
              color: Theme.of(context).primaryColor,
              borderRadius: new BorderRadius.circular(10.0),
            ),
            height: MediaQuery.of(context).size.height * 0.78,
            width: MediaQuery.of(context).size.width - 10.0,
          ),
          new Positioned(
            bottom: ScreenUtil().setHeight(40.0),
            left: ScreenUtil().setWidth(40.0),
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Moumita Bid",
                      style: new TextStyle(
                          shadows: [
                            new Shadow(
                                color: Colors.black54,
                                offset: new Offset(1.0, 2.0),
                                blurRadius: 10.0)
                          ],
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(95.0),
                          fontWeight: FontWeight.w800),
                    ),
                    new SizedBox(
                      width: ScreenUtil().setWidth(40.0),
                    ),
                    new Text(
                      "25",
                      style: new TextStyle(
                          shadows: [
                            new Shadow(
                                color: Colors.black54,
                                offset: new Offset(1.0, 2.0),
                                blurRadius: 10.0)
                          ],
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(70.0),
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                new Text(
                  "Not availiable right now !",
                  style: new TextStyle(
                      color: Colors.white,
                      shadows: [
                        new Shadow(
                            color: Colors.black54,
                            offset: new Offset(1.0, 2.0),
                            blurRadius: 10.0)
                      ],
                      fontSize: ScreenUtil().setSp(55.0),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          new Positioned(
            bottom: 0.0,
            child: new Container(
              width: MediaQuery.of(context).size.width - 10.0,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10.0),
                  gradient: new LinearGradient(
                      colors: [Colors.transparent, Colors.black54],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0])),
            ),
          )
        ],
      ),
    );
  }
}

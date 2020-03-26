import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          color: Colors.blue.shade50,
        ),
        new Positioned(
          bottom: 0.0,
          child: new Container(
            height: ScreenUtil().setWidth(220.0),
            width: MediaQuery.of(context).size.width,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(15.0)),
                  height: ScreenUtil().setHeight(80.0),
                  width: ScreenUtil().setHeight(80.0),
                  decoration: new BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                            offset: new Offset(0.0, 0.0), color: Colors.grey),
                        new BoxShadow(
                            offset: new Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        new BoxShadow(
                            offset: new Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: new ShaderMask(
                      child: new Image(
                          image: new AssetImage('assets/images/round.png')),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.amber.shade700,
                              Colors.amber.shade400
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                new Container(
                  padding: EdgeInsets.all(ScreenUtil().setSp(30.0)),
                  height: ScreenUtil().setHeight(110.0),
                  width: ScreenUtil().setHeight(110.0),
                  decoration: new BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                            offset: new Offset(0.0, 0.0), color: Colors.grey),
                        new BoxShadow(
                            offset: new Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        new BoxShadow(
                            offset: new Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: new ShaderMask(
                      child: new Image(
                        image: AssetImage('assets/images/closeRounded.png'),
                      ),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Theme.of(context).accentColor,
                              Theme.of(context).primaryColor
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                new Container(
                  height: ScreenUtil().setHeight(80.0),
                  width: ScreenUtil().setHeight(80.0),
                  decoration: new BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                            offset: new Offset(0.0, 0.0), color: Colors.grey),
                            new BoxShadow(
                          offset: new Offset(1.0, 1.0),
                          color: Colors.grey,
                          blurRadius: 5.0
                        ),
                        new BoxShadow(
                          offset: new Offset(-1.0, -1.0),
                          color: Colors.white,
                          blurRadius: 10.0
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: new ShaderMask(
                      child: new Icon(
                        Icons.star,
                        size: ScreenUtil().setHeight(65.0),
                      ),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.blue.shade400,
                              Colors.blue.shade300
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                new Container(
                  padding: EdgeInsets.all(ScreenUtil().setSp(30.0)),
                  height: ScreenUtil().setHeight(110.0),
                  width: ScreenUtil().setHeight(110.0),
                  decoration: new BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                            offset: new Offset(0.0, 0.0), color: Colors.grey),
                            new BoxShadow(
                          offset: new Offset(1.0, 1.0),
                          color: Colors.grey,
                          blurRadius: 5.0
                        ),
                        new BoxShadow(
                          offset: new Offset(-1.0, -1.0),
                          color: Colors.white,
                          blurRadius: 10.0
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: new ShaderMask(
                      child: new Icon(
                        Icons.favorite,
                        size: ScreenUtil().setHeight(65.0),
                      ),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.tealAccent.shade700,
                              Colors.tealAccent.shade200
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                new Container(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(15.0)),
                  height: ScreenUtil().setHeight(80.0),
                  width: ScreenUtil().setHeight(80.0),
                  decoration: new BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                            offset: new Offset(0.0, 0.0), color: Colors.grey),
                            new BoxShadow(
                          offset: new Offset(1.0, 1.0),
                          color: Colors.grey,
                          blurRadius: 5.0
                        ),
                        new BoxShadow(
                          offset: new Offset(-1.0, -1.0),
                          color: Colors.white,
                          blurRadius: 10.0
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: new ShaderMask(
                      child: new Image(
                          image: new AssetImage('assets/images/lighting.png')),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.purple.shade500,
                              Colors.purple.shade200
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                )
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
            child: new ClipRRect(
              borderRadius: new BorderRadius.circular(10.0),
              child: new Image(
                  fit: BoxFit.cover,
                  image: new AssetImage("assets/images/person3.jpg")),
            ),
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

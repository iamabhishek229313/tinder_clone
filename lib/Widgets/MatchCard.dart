import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class MatchCard extends StatefulWidget {
  final String name;
  final String imageURL;
  final int age;
  final String bio;

  MatchCard(@required this.name, @required this.imageURL, @required this.age,
      @required this.bio);

  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
              color: Colors.grey.shade700,
              offset: new Offset(0.0, 5.0),
              blurRadius: 20.0)
        ],
        borderRadius: new BorderRadius.circular(100.0),
      ),
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
              borderRadius: new BorderRadius.circular(100.0),
            ),
            height: MediaQuery.of(context).size.height * 0.74,
            width: MediaQuery.of(context).size.width - 10.0,
            child: new ClipRRect(
              borderRadius: new BorderRadius.circular(10.0),
              child: new Image(
                  fit: BoxFit.cover, image: new AssetImage(widget.imageURL)),
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
                      widget.name,
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
                      widget.age.toString(),
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
                new SizedBox(
                  height: ScreenUtil().setHeight(10.0),
                ),
                new Text(
                  widget.bio,
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
            bottom: 1.0,
            right: -1.0,
            child: new Container(
              width: MediaQuery.of(context).size.width - 22.0,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10.0),
                  gradient: new LinearGradient(
                      colors: [Colors.transparent, Colors.black26],
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

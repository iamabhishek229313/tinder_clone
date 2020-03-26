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
        Container(
          color: Colors.blueGrey.shade50,
        ),
        new Stack(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.all(ScreenUtil().setWidth(10.0)),
              decoration: new BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.0)),
              height: MediaQuery.of(context).size.height * 0.78,
              width: MediaQuery.of(context).size.width,
            ),
            new Positioned(
              bottom: ScreenUtil().setHeight(40.0),
              left: ScreenUtil().setWidth(40.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Row(
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
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black26,
                      Colors.black38,
                      Colors.black54,
                      Colors.black87,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.0,
                      0.3,
                      0.4,
                      0.75,
                      1.0
                    ]
                  )
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

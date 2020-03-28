import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:tinder_clone/Models/PeopleList.dart';
import 'package:tinder_clone/Widgets/MatchCard.dart';

class TinderTab extends StatefulWidget {
  @override
  _TinderTabState createState() => _TinderTabState();
}

class _TinderTabState extends State<TinderTab>
    with SingleTickerProviderStateMixin {
  bool chng = true;
  bool atCenter = true;
  bool _triggerNotFound = false;
  bool _timeout = false;
  CardController _cardController;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new AnimatedContainer(
          duration: new Duration(milliseconds: 600),
          curve: Curves.fastLinearToSlowEaseIn,
          color: !atCenter
              ? chng ? Colors.pinkAccent.shade200 : Colors.tealAccent.shade200
              : Colors.blue.shade50,
          child: new Center(
            child: _triggerNotFound
                ? !_timeout
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new CircularProgressIndicator(),
                          new SizedBox(
                            height: ScreenUtil().setHeight(30.0),
                          ),
                          new Text(
                            "Searching nearby matchings ...",
                            style: new TextStyle(
                                fontSize: ScreenUtil().setSp(60.0),
                                fontWeight: FontWeight.w200,
                                color: Colors.grey.shade600),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new SizedBox(
                            height: ScreenUtil().setHeight(550.0),
                          ),
                          new ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: new Image(
                                width: ScreenUtil().setWidth(400),
                                height: ScreenUtil().setWidth(400),
                                fit: BoxFit.cover,
                                image:
                                    new AssetImage('assets/images/abhishekProfile.JPG')),
                          ),
                          new SizedBox(
                            height: ScreenUtil().setHeight(40.0),
                          ),
                          new Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(60.0)),
                            child: new Text("There is no one new around you ...",
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    wordSpacing: 1.2,
                                    fontSize: ScreenUtil().setSp(55.0),
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey.shade600)),
                          )
                        ],
                      )
                : Container(),
          ),
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
                            blurRadius: 5.0),
                        new BoxShadow(
                            offset: new Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
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
                              Colors.blue.shade600,
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
                            blurRadius: 5.0),
                        new BoxShadow(
                            offset: new Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
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
            child: new TinderSwapCard(
              animDuration: 800,
              orientation: AmassOrientation.TOP,
              totalNum: peoples.length,
              stackNum: 3,
              swipeEdge: 10.0,
              maxWidth: MediaQuery.of(context).size.width - 10.0,
              maxHeight: MediaQuery.of(context).size.height * 0.74,
              minWidth: MediaQuery.of(context).size.width - 50.0,
              minHeight: MediaQuery.of(context).size.height * 0.73,
              cardBuilder: (context, index) {
                return peoples[index];
              },
              cardController: _cardController,
              swipeUpdateCallback:
                  (DragUpdateDetails details, Alignment align) {
                /// Get swiping card's alignment
                if (align.x < 0) {
                  //Card is LEFT swiping
                  print("Left align " + align.x.toString());
                  setState(() {
                    if (align.x < -1) atCenter = false;
                    chng = true;
                  });
                } else if (align.x > 0) {
                  //Card is RIGHT swiping
                  print("right align " + align.x.toString());
                  setState(() {
                    if (align.x > 1) atCenter = false;
                    chng = false;
                  });
                }
              },
              swipeCompleteCallback:
                  (CardSwipeOrientation orientation, int index) {
                /// Get orientation & index of swiped card!
                setState(() {
                  atCenter = true;
                  if (index == peoples.length - 1) {
                    _triggerNotFound = true;
                    Future.delayed(Duration(seconds: 5), () {
                      _timeout = true;
                      setState(() {});
                    });
                  }
                });
              },
            )),
      ],
    );
  }

  double abs(double x) {
    if (x < 0) return x * -1;
    return x;
  }
}

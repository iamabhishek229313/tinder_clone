import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tinder_clone/Models/ChatUser.dart';
import 'package:tinder_clone/Screens/InPersonChatScreen.dart';

class MessagesTab extends StatefulWidget {
  @override
  _MessagesTabState createState() => _MessagesTabState();
}

class _MessagesTabState extends State<MessagesTab> {
  bool _messagesSelected;
  bool _firstVistToFeed = false;
  TextEditingController _fieldController;

  @override
  void initState() {
    super.initState();
    _messagesSelected = true;
    _fieldController = new TextEditingController();
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
              new GestureDetector(
                onTap: () {
                  setState(() {
                    _messagesSelected = true;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(115.0),
                      vertical: ScreenUtil().setHeight(20.0)),
                  child: new Text(
                    "Messages",
                    style: new TextStyle(
                        fontSize: ScreenUtil().setSp(50.0),
                        fontWeight: FontWeight.w500,
                        color: _messagesSelected
                            ? Theme.of(context).primaryColor
                            : Colors.blueGrey.shade200),
                  ),
                ),
              ),
              new VerticalDivider(
                width: 0,
                thickness: 2,
                endIndent: ScreenUtil().setHeight(20.0),
                indent: ScreenUtil().setHeight(20.0),
                color: Colors.blueGrey.shade100,
              ),
              new GestureDetector(
                onTap: () {
                  setState(() {
                    _messagesSelected = false;
                    if (_firstVistToFeed == false) {
                      Future.delayed(
                          new Duration(
                            seconds: 3,
                          ), () {
                        _firstVistToFeed = true;
                        setState(() {});
                      });
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(150.0),
                      vertical: ScreenUtil().setHeight(20.0)),
                  child: new Text(
                    "  Feed  ",
                    style: new TextStyle(
                        fontSize: ScreenUtil().setSp(50.0),
                        fontWeight: FontWeight.w500,
                        color: _messagesSelected
                            ? Colors.blueGrey.shade200
                            : Theme.of(context).primaryColor),
                  ),
                ),
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
        _messagesSelected
            ? new Expanded(
                child: new ListView(
                children: <Widget>[
                  new SizedBox(
                    height: ScreenUtil().setHeight(30.0),
                  ),
                  new Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(10.0)),
                    child: new TextField(
                      controller: _fieldController,
                      cursorRadius: Radius.circular(10.0),
                      cursorColor: Theme.of(context).primaryColor,
                      style: new TextStyle(fontSize: ScreenUtil().setSp(50.0)),
                      decoration: new InputDecoration(
                          hintText: "Search ${dummyMsg.length} matches",
                          suffixText: 'Newest  ',
                          border: InputBorder.none,
                          prefixIcon: new Icon(
                            Icons.search,
                            color: Theme.of(context).primaryColor,
                          )),
                    ),
                  ),
                  new Divider(
                    height: 1.0,
                    color: Theme.of(context).accentColor,
                    indent: ScreenUtil().setWidth(120.0),
                    endIndent: ScreenUtil().setWidth(30.0),
                  ),
                  new SizedBox(
                    height: ScreenUtil().setHeight(30.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(30.0)),
                    child: new Column(
                      children: <Widget>[
                        new Align(
                          alignment: Alignment.topLeft,
                          child: new Text(
                            "New Matches",
                            style: new TextStyle(
                                fontSize: ScreenUtil().setSp(45.0),
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).secondaryHeaderColor),
                          ),
                        ),
                        new SizedBox(
                          height: ScreenUtil().setHeight(30.0),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: ScreenUtil().setHeight(250.0),
                    child: new ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Center(
                            child: new Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: ScreenUtil().setWidth(20.0)),
                              width: ScreenUtil().setHeight(150),
                              height: ScreenUtil().setHeight(150),
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(90),
                                  color: Colors.blueGrey.shade50),
                            ),
                          );
                        }),
                  ),
                  new SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(30.0)),
                    child: new Align(
                      alignment: Alignment.topLeft,
                      child: new Text(
                        "Messages",
                        style: new TextStyle(
                            fontSize: ScreenUtil().setSp(45.0),
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).secondaryHeaderColor),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  ),
                  new ListBody(
                    children: List.generate(dummyMsg.length, (index) {
                      return new GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => InChatScreen(user: dummyMsg[index])));
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: ScreenUtil().setHeight(230.0),
                              margin: EdgeInsets.symmetric(
                                  horizontal: ScreenUtil().setWidth(40.0)),
                              child: new Row(
                                children: <Widget>[
                                  new Container(
                                    height: ScreenUtil().setHeight(180),
                                    width: ScreenUtil().setHeight(180),
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            new BorderRadius.circular(100),
                                        ),
                                    child: ClipRRect(
                                      borderRadius: new BorderRadius.circular(100),
                                      child: new Image(
                                        fit: BoxFit.cover,
                                      image: new AssetImage(dummyMsg[index].imageURL)
                                    ),),
                                  ),
                                  new SizedBox(
                                    width: ScreenUtil().setWidth(25.0),
                                  ),
                                  new Expanded(
                                      child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text(
                                        dummyMsg[index].name,
                                        style: new TextStyle(
                                            fontSize: ScreenUtil().setSp(50.0),
                                            fontWeight: FontWeight.w700),
                                      ),
                                      new Text(
                                        dummyMsg[index].message,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: new TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: ScreenUtil().setSp(45.0),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            new Divider(
                                height: 1,
                                indent: ScreenUtil().setWidth(300.0),
                                endIndent: ScreenUtil().setWidth(20.0))
                          ],
                        ),
                      );
                    }),
                  )
                ],
              ))
            : _firstVistToFeed == false
                ? Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new CircularProgressIndicator(),
                        new SizedBox(
                          height: ScreenUtil().setHeight(30.0),
                        ),
                        new Text(
                          "Loading feeds ...",
                          style: new TextStyle(
                              fontSize: ScreenUtil().setSp(50.0),
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  )
                : new Expanded(
                    child: Column(
                    children: <Widget>[
                      new SizedBox(
                        height: ScreenUtil().setHeight(100.0),
                      ),
                      new Image(
                          width: ScreenUtil().setWidth(600),
                          height: ScreenUtil().setHeight(400),
                          fit: BoxFit.cover,
                          image: new AssetImage('assets/images/sorry.png')),
                      new SizedBox(
                        height: ScreenUtil().setHeight(50.0),
                      ),
                      new Text(
                        "Check back later",
                        style: new TextStyle(
                            wordSpacing: 1.5,
                            fontSize: ScreenUtil().setSp(75.0),
                            fontWeight: FontWeight.w400),
                      ),
                      new SizedBox(
                        height: ScreenUtil().setWidth(20.0),
                      ),
                      new Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(60.0)),
                        child: new Text(
                            "We couldn't find any social activity for your matches. Try again later",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontSize: ScreenUtil().setSp(40.0),
                                fontWeight: FontWeight.w300,
                                color: Colors.grey.shade600)),
                      )
                    ],
                  ))
      ],
    );
  }
}

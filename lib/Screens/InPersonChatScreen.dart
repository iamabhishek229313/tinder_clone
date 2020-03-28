import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tinder_clone/Models/ChatUser.dart';
import 'package:tinder_clone/Models/Message.dart';

class InChatScreen extends StatefulWidget {
  ChatUser user;

  InChatScreen({@required this.user});
  @override
  _InChatScreenState createState() => _InChatScreenState();
}

class _InChatScreenState extends State<InChatScreen> {
  TextEditingController _messageController;
  @override
  void initState() {
    super.initState();
    _messageController = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          titleSpacing: 0.0,
          actions: <Widget>[
            new ShaderMask(
                child: new IconButton(
                    icon: new Icon(Icons.more_vert), onPressed: () {}),
                blendMode: BlendMode.srcATop,
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).accentColor
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.0, 1.0]).createShader(bounds);
                }),
          ],
          leading: new ShaderMask(
              child: new IconButton(
                  icon: new Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).accentColor
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.0, 1.0]).createShader(bounds);
              }),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              new ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  widget.user.imageURL,
                  fit: BoxFit.cover,
                  height: ScreenUtil().setHeight(80.0),
                  width: ScreenUtil().setHeight(80.0),
                ),
              ),
              new SizedBox(width: ScreenUtil().setWidth(20.0)),
              new Expanded(
                child: new Container(
                  padding: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(10.0), 0.0, 0.0, 0.0),
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: new Text(
                    widget.user.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: new TextStyle(
                        fontSize: ScreenUtil().setSp(70.0),
                        color: Colors.grey.shade600),
                  ),
                ),
              )
            ],
          ),
        ),
        body: new Column(
          children: <Widget>[
            new Expanded(
                flex: 12,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(20.0),
                    right: ScreenUtil().setWidth(20.0),
                  ),
                  child: new ListView.builder(
                    itemCount: msgs.length,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return msgs[index].isMe
                          ? new Bubble(
                              margin: BubbleEdges.only(
                                  top: (index < msgs.length - 1 &&
                                          msgs[index + 1].isMe)
                                      ? ScreenUtil().setHeight(5.0)
                                      : ScreenUtil().setHeight(20.0),
                                  left: ScreenUtil().setWidth(100.0),
                                  bottom: index == 0
                                      ? ScreenUtil().setHeight(10.0)
                                      : ScreenUtil().setHeight(0.0)),
                              nip: (index < msgs.length - 2 &&
                                      msgs[index + 1].isMe)
                                  ? BubbleNip.no
                                  : BubbleNip.rightBottom,
                              nipRadius: ScreenUtil().setWidth(11),
                              color: Colors.blue.shade300,
                              style: new BubbleStyle(
                                  radius: Radius.circular(
                                      ScreenUtil().setWidth(40.0))),
                              nipHeight: ScreenUtil().setHeight(20),
                              nipWidth: ScreenUtil().setWidth(23),
                              alignment: Alignment.centerRight,
                              elevation: 0.4,
                              child: new Text(
                                msgs[index].msg,
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: ScreenUtil().setSp(43),
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          : new Bubble(
                              margin: BubbleEdges.only(
                                  top: (index < msgs.length - 2 &&
                                          msgs[index + 1].isMe)
                                      ? ScreenUtil().setHeight(20.0)
                                      : ScreenUtil().setHeight(5.0),
                                  right: ScreenUtil().setWidth(100.0)),
                              nip: (index < msgs.length - 2 &&
                                      !msgs[index + 1].isMe)
                                  ? BubbleNip.no
                                  : BubbleNip.leftBottom,
                              color: Colors.blueGrey.shade50,
                              nipHeight: ScreenUtil().setHeight(20),
                              nipWidth: ScreenUtil().setWidth(23),
                              nipRadius: ScreenUtil().setWidth(11),
                              style: new BubbleStyle(
                                  radius: Radius.circular(
                                      ScreenUtil().setWidth(40.0))),
                              alignment: Alignment.centerLeft,
                              elevation: 0.4,
                              child: new Text(
                                msgs[index].msg,
                                style: new TextStyle(
                                    color: Colors.black87,
                                    fontSize: ScreenUtil().setSp(43),
                                    fontWeight: FontWeight.w400),
                              ),
                            );
                    },
                  ),
                )),
            new Container(
              padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(5.0)),
              height: ScreenUtil().setHeight(100.0),
              decoration: new BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: new BorderRadius.circular(30.0)),
              child: new Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(10.0),
                    vertical: ScreenUtil().setHeight(0.0)),
                child: Row(
                  children: <Widget>[
                    new Expanded(
                      flex: 8,
                      child: new Container(
                        height: double.infinity,
                        decoration: new BoxDecoration(
                        color: Colors.white,

                            boxShadow: [
                              new BoxShadow(
                                offset: new Offset(0.0, 0.0),
                                color: Colors.grey
                              )
                            ],
                            borderRadius: new BorderRadius.circular(50.0)),
                        child: new Align(
                          alignment: Alignment.center,
                          child: new TextField(
                            controller: _messageController,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: new InputDecoration(
                                hintText: "Type a message",
                                border: InputBorder.none,
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      right: ScreenUtil().setWidth(20.0)),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Icon(
                                        Icons.attachment,
                                        color: Colors.grey,
                                      ),
                                      new SizedBox(
                                          width: ScreenUtil().setWidth(15.0)),
                                      new Icon(
                                        Icons.camera_alt,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                                prefixIcon: new Icon(
                                  Icons.sentiment_satisfied,
                                  size: ScreenUtil().setSp(70.0),
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: ScreenUtil().setWidth(10.0),
                    ),
                    new Expanded(
                        flex: 1,
                        child: new Container(
                            height: double.infinity,
                            decoration: new BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: new BorderRadius.circular(50.0)),
                            child: Center(
                              child: new Icon(
                                Icons.send,
                                size: ScreenUtil().setSp(70.0),
                                color: Colors.white,
                              ),
                            )))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

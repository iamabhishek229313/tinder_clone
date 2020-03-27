import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:tinder_clone/Models/PeopleList.dart';
import 'package:tinder_clone/Widgets/MatchCard.dart';

class TinderTab extends StatefulWidget {
  @override
  _TinderTabState createState() => _TinderTabState();
}
class _TinderTabState extends State<TinderTab> with SingleTickerProviderStateMixin {

  CardController _cardController ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          color: Colors.blueAccent.shade50,
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
          child: new TinderSwapCard(
              animDuration: 800,
              orientation: AmassOrientation.TOP,
              totalNum: peoples.length,
              stackNum: 3,
              swipeEdge:10.0,
              maxWidth:  MediaQuery.of(context).size.width - 10.0,
              maxHeight:MediaQuery.of(context).size.height * 0.74,
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
                  print(align.x);
                } else if (align.x > 0) {
                  //Card is RIGHT swiping
                  print(align.y);
                }
              },
              swipeCompleteCallback:
                  (CardSwipeOrientation orientation, int index) {
                /// Get orientation & index of swiped card!
              },
          )
        ),
      ],
    );
  }
}

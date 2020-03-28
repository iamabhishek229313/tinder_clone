import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade100,
        ),
        new ClipPath(
          clipBehavior: Clip.antiAlias,
          clipper: new MyClipper(),
          child: new Container(
            height: MediaQuery.of(context).size.height * 0.725,
            decoration: new BoxDecoration(color: Colors.white, boxShadow: [
              new BoxShadow(
                  color: Colors.grey,
                  offset: new Offset(1.0, 10.0),
                  blurRadius: 10.0)
            ]),
            child: new Column(
              children: <Widget>[
                new Expanded(
                  flex: 4,
                  child: new Container(
                    child: new Column(
                      children: <Widget>[
                        new SizedBox(height: ScreenUtil().setHeight(50.0)),
                        new ClipRRect(
                          borderRadius: BorderRadius.circular(500.0),
                          child: new Image(
                              fit: BoxFit.cover,
                              height: ScreenUtil().setHeight(350.0),
                              width: ScreenUtil().setWidth(430.0),
                              image: new AssetImage(
                                  'assets/images/abhishekProfile.JPG')),
                        ),
                        new SizedBox(height: ScreenUtil().setHeight(10.0)),
                        new Text(
                          "Abhishek, 19",
                          style: new TextStyle(
                              letterSpacing: 1.1,
                              fontSize: ScreenUtil().setSp(70),
                              fontWeight: FontWeight.w400),
                        ),
                        new Expanded(
                            child: new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Container(
                                    width: ScreenUtil().setWidth(165.0),
                                    height: ScreenUtil().setHeight(140.0),
                                    decoration: new BoxDecoration(
                                        color: Colors.blueGrey.shade50,
                                        borderRadius:
                                            BorderRadius.circular(100.0)),
                                    child: new Icon(
                                      Icons.settings,
                                      size: ScreenUtil().setSp(100),
                                      color: Colors.blueGrey.shade200,
                                    ),
                                  ),
                                  new SizedBox(
                                      height: ScreenUtil().setHeight(10.0)),
                                  new Text(
                                    "SETTINGS",
                                    style: new TextStyle(
                                        color: Colors.blueGrey.shade200,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            new Expanded(
                                child: new Stack(
                              children: <Widget>[
                                new Container(
                                  color: Colors.white,
                                ),
                                new Positioned(
                                  right: 1.0,
                                  bottom: 0.0,
                                  left: 1.0,
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      new Container(
                                        width: ScreenUtil().setHeight(160),
                                        height: ScreenUtil().setHeight(160),
                                        decoration: new BoxDecoration(
                                            gradient: new LinearGradient(
                                                colors: [
                                                  Theme.of(context).accentColor,
                                                  Theme.of(context)
                                                      .secondaryHeaderColor,
                                                  Theme.of(context).primaryColor
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomRight,
                                                stops: [0.0, 0.35, 1.0]),
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(150.0)),
                                        child: new Icon(
                                          Icons.camera_alt,
                                          color: Colors.white,
                                          size: ScreenUtil().setSp(125.0),
                                        ),
                                      ),
                                      new SizedBox(
                                          height: ScreenUtil().setHeight(10.0)),
                                      new Text(
                                        "ADD MEDIA",
                                        style: new TextStyle(
                                            color: Colors.blueGrey.shade200,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                                new Positioned(
                                  right: ScreenUtil().setWidth(80.0),
                                  bottom: ScreenUtil().setWidth(62.0),
                                  child: new Container(
                                    width: ScreenUtil().setHeight(50),
                                    height: ScreenUtil().setHeight(50),
                                    decoration: new BoxDecoration(
                                        boxShadow: [
                                          new BoxShadow(
                                            color: Colors.grey,
                                            offset: new Offset(2.0, 3.0),
                                            blurRadius: 5.0,
                                          )
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            new BorderRadius.circular(25)),
                                    child: Center(
                                      child: new Icon(
                                        Icons.add,
                                        color: Theme.of(context).accentColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                            new Expanded(
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Container(
                                    width: ScreenUtil().setWidth(165.0),
                                    height: ScreenUtil().setHeight(140.0),
                                    decoration: new BoxDecoration(
                                        color: Colors.blueGrey.shade50,
                                        borderRadius:
                                            BorderRadius.circular(100.0)),
                                    child: new Icon(
                                      Icons.edit,
                                      size: ScreenUtil().setSp(100),
                                      color: Colors.blueGrey.shade200,
                                    ),
                                  ),
                                  new SizedBox(
                                      height: ScreenUtil().setHeight(10.0)),
                                  new Text(
                                    "EDIT INFO",
                                    style: new TextStyle(
                                        color: Colors.blueGrey.shade200,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                new Expanded(flex: 3, child: new Container())
              ],
            ),
          ),
        ),
        new Positioned(
            bottom: ScreenUtil().setHeight(80.0),
            child: new Container(
              height: ScreenUtil().setHeight(350),
              width: MediaQuery.of(context).size.width,
              child: new CarouselSlider(
                height: ScreenUtil().setHeight(300),
                aspectRatio: 16 / 2,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayInterval: Duration(seconds: 2),
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlay: true,
                enlargeCenterPage: true,
                pauseAutoPlayOnTouch: Duration(seconds: 5),
                items: [0, 1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (context) {
                      return Container(
                        width: ScreenUtil().setWidth(900.0),
                        height: ScreenUtil().setHeight(180),
                        margin: EdgeInsets.all(5.0),
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.grey,
                                  offset: new Offset(0.0, 5.0),
                                  blurRadius: 10.0)
                            ],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: new Center(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Text(
                              quotes[i].heading,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: ScreenUtil().setSp(65.0),
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black54),
                            ),
                            new SizedBox(
                              height: ScreenUtil().setHeight(15.0),
                            ),
                            new Text(
                              quotes[i].baseline,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: ScreenUtil().setSp(40.0),
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54),
                            ),
                          ],
                        )),
                      );
                    },
                  );
                }).toList(),
              ),
            ))
      ],
    );
  }
}

final Shader linearGradient = new LinearGradient(
        colors: [Colors.amber.shade800, Colors.amber.shade600],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [0.0, 1.0])
    .createShader(Rect.fromLTWH(
        0.0, 0.0, ScreenUtil().setWidth(30), ScreenUtil().setHeight(20)));

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(0, size.height - ScreenUtil().setHeight(200));
    Offset controlPoint = new Offset(size.width / 2, size.height);
    p.quadraticBezierTo(controlPoint.dx, controlPoint.dy, size.width,
        size.height - ScreenUtil().setHeight(200));
    //p.lineTo(size.width,size.height - ScreenUtil().setHeight(200) );
    p.lineTo(size.width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Quotes {
  final String heading;
  final String baseline;

  Quotes(this.heading, this.baseline);
}

List<Quotes> quotes = [
  new Quotes("GET TINDER GOLD", "See who likes you & more!"),
  new Quotes("Get matches faster", "Boost your profile once a month!"),
  new Quotes(
      "I meant to swipe right", "Get unlimited Rewinds with Tinder Plus!"),
  new Quotes("Stand out with Super Likes",
      "You're 3 times more likely to get a match!"),
  new Quotes("Increase your chances", "Get unlimited likes with tinder Plus!"),
  new Quotes(
      "Swipe around the world!", "Passport to anywhere with Tinder Plus!"),
];

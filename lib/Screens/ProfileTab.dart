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
          color: Colors.grey.shade500,
        ),
        new ClipPath(
          clipBehavior: Clip.antiAlias,
          clipper: new MyClipper(),
          child: new Container(
            height: MediaQuery.of(context).size.height * 0.725,
            color: Colors.deepOrange,
            child: new Column(
              children: <Widget>[
                new Expanded(
                  flex: 4,
                  child: new Container(
                    color: Colors.deepPurple,
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
                        new SizedBox(height : ScreenUtil().setHeight(10.0)),
                        new Text(
                          "Abhishek, 19",
                          style: new TextStyle(
                            letterSpacing: 1.1,
                            fontSize: ScreenUtil().setSp(70),
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        new Expanded(
                          child: new Row(
                            children: <Widget>[
                              new Expanded(
                                child: Container(color:Colors.red)
                              ),
                              new Expanded(
                                child: Container(color:Colors.amber)
                              ),
                              new Expanded(
                                child: Container(color:Colors.green)
                              )
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                ),
                new Expanded(
                    flex: 3,
                    child: new Container(
                      color: Colors.indigo,
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

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

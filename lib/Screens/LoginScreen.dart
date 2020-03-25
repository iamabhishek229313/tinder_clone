import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tinder_clone/Models/tinder_clone_icons.dart';
import 'package:tinder_clone/Screens/PhoneNumber.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>() ;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Theme.of(context).accentColor,
                    Theme.of(context).secondaryHeaderColor,
                    Theme.of(context).primaryColor
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.35, 1.0])),
          child: new Column(
            children: <Widget>[
              new Expanded(
                  flex: 5,
                  child: Center(
                      child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Icon(
                        Tinder_clone.iconfinder_338_tinder_logo_4375488__1_,
                        color: Colors.white,
                        size: ScreenUtil().setSp(180.0),
                      ),
                      new SizedBox(width: ScreenUtil().setWidth(10.0)),
                      new Text(
                        "tinder",
                        style: new TextStyle(
                            fontSize: ScreenUtil().setSp(140.0),
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      )
                    ],
                  ))),
              new Expanded(
                  flex: 3,
                  child: new Padding(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(75.0)),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          'By clicking "Log in",you agree with our Terms.\n Learn how we process your data in our Privacy  Policy and Cookies Policy',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        new SizedBox(height: ScreenUtil().setHeight(50.0)),
                        new Container(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(105.0),
                          child: new RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90.0)),
                            color: Colors.white,
                            elevation: 0.0,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PhoneNumberScreen()));
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text(
                                  "LOG IN WITH PHONE NUMBER",
                                  style: new TextStyle(
                                      color: Colors.grey, wordSpacing: 1.2),
                                )
                              ],
                            ),
                          ),
                        ),
                        new SizedBox(height: ScreenUtil().setHeight(30.0)),
                        new Container(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(105.0),
                          child: new RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90.0)),
                            color: Colors.white,
                            elevation: 0.0,
                            onPressed: () {
                              var snkBAr = new SnackBar(
                                  content: new Text(
                                      "You can add this feature dev 😍"));

                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text(
                                  "LOG IN WITH FACEBOOK",
                                  style: new TextStyle(
                                      color: Colors.grey, wordSpacing: 1.2),
                                )
                              ],
                            ),
                          ),
                        ),
                        new SizedBox(height: ScreenUtil().setHeight(70.0)),
                        new Text(
                          "Trouble logging in?",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(50.0),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}

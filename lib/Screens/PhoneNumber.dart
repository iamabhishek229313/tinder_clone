import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tinder_clone/HomePage.dart';

class PhoneNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: new IconButton(icon: 
        new Icon(Icons.arrow_back,color : Theme.of(context).primaryColor)
        , onPressed: (){
          Navigator.pop(context);
        }),
        elevation: 0.0,
      ),
      body: new Padding(
        padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(50.0),
            right: ScreenUtil().setWidth(50.0)),
        child: new Column(
          children: <Widget>[
            new Expanded(
                flex: 5,
                child: new Column(
                  children: <Widget>[
                    new Align(
                      alignment: Alignment.topLeft,
                      child: new Text(
                        "My number is",
                        style: new TextStyle(
                            fontSize: ScreenUtil().setSp(100.0),
                            fontWeight: FontWeight.w600,
                            color: Colors.black54),
                      ),
                    ),
                    new SizedBox(
                      height: ScreenUtil().setHeight(80.0),
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          flex: 3,
                          child: new TextField(
                            keyboardType: TextInputType.number,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: new InputDecoration(
                                prefixIcon: new Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                                helperText: 'Country code'),
                          ),
                        ),
                        new SizedBox(
                          width: ScreenUtil().setWidth(20.0),
                        ),
                        new Expanded(
                            flex: 7,
                            child: new TextField(
                              keyboardType: TextInputType.number,
                              cursorColor: Theme.of(context).primaryColor,
                              decoration: new InputDecoration(
                                  helperText: 'Phone number'),
                            )),
                      ],
                    ),
                    new SizedBox(
                      height: ScreenUtil().setHeight(60.0),
                    ),
                    new Text(
                      'When you tap "Continue",Tinder will send a text a with verification code. Message and data rates may apply.\nThe verified phone number can be used to log in. Learn what happens when your number changes.',
                      style: new TextStyle(
                          fontSize: ScreenUtil().setSp(37.0),
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    new SizedBox(
                      height: ScreenUtil().setHeight(40.0),
                    ),
                    new GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: new Container(
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(90.0),
                            gradient: new LinearGradient(
                                colors: [
                                  Theme.of(context).accentColor,
                                  Theme.of(context).secondaryHeaderColor,
                                  Theme.of(context).primaryColor
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                stops: [0.0, 0.1, 1.0])),
                        width: double.infinity,
                        height: ScreenUtil().setHeight(110.0),
                        child: Center(
                          child: new Text(
                            "CONTINUE",
                            style: new TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600,
                                fontSize: ScreenUtil().setSp(45.0)),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

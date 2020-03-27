import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinder_clone/Models/tinder_clone_icons.dart';
import 'package:tinder_clone/Screens/MessagesTab.dart';
import 'package:tinder_clone/Screens/ProfileTab.dart';
import 'package:tinder_clone/Screens/TinderTab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabcontroller;
  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(length: 3, vsync: this);
    _tabcontroller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 1,
          title: new TabBar(
              indicatorColor: Colors.transparent,
              controller: _tabcontroller,
              tabs: [
                new SafeArea(
                  child: new Container(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                    child: Center(
                      child: new Icon(
                        Tinder_clone.iconfinder_icons_user2_1564535,
                        color: _tabcontroller.index == 0
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        size: ScreenUtil().setSp(80.0),
                      ),
                    ),
                  ),
                ),
                new SafeArea(
                  child: new Container(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                    child: Center(
                      child: new Icon(
                        Tinder_clone.iconfinder_338_tinder_logo_4375488__1_,
                        color: _tabcontroller.index == 1
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        size: ScreenUtil().setSp(80.0),
                      ),
                    ),
                  ),
                ),
                new SafeArea(
                  child: new Container(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                    child: Center(
                      child: new Icon(
                        Tinder_clone.iconfinder_message_01_186393,
                        color: _tabcontroller.index == 2
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        size: ScreenUtil().setSp(80.0),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        body: new TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabcontroller,
          children: <Widget>[
            new ProfileTab(),
            new TinderTab(),
            new MessagesTab()
          ],
        ));
  }
}

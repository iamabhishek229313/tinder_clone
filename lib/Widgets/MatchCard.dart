import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class MatchCard extends StatefulWidget {
  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard>
    with SingleTickerProviderStateMixin {
  AnimationController _animController;
  Animation<Alignment> animation;
  Alignment _dragAlignment = Alignment.topCenter;

  void _runAnimation(Offset pixelpersecond, Size size) {
    animation = _animController.drive(
      AlignmentTween(begin: _dragAlignment, end: Alignment.topCenter),
    );

    final unitsPerSecondX = pixelpersecond.dx / size.width;
    final unitsPerSecondY = pixelpersecond.dy / size.height;

    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    const spring = SpringDescription(mass: 30, stiffness: 1, damping: 1);

    final simulation = new SpringSimulation(spring, 0, 1, -unitVelocity);

    _animController.animateWith(simulation);
  }

  @override
  void initState() {
    super.initState();
    _animController = new AnimationController(vsync: this);

    _animController.addListener(() {
      setState(() {
        _dragAlignment = animation.value;
      });
    });
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return new GestureDetector(
      onPanDown: (details) {
        _animController.stop();
      },
      onPanUpdate: (details) {
        setState(() {
          _dragAlignment += Alignment(details.delta.dx / (size.width / 2),
              details.delta.dy / (size.height / 2));
        });
      },
      onPanEnd: (details){
        _runAnimation(details.velocity.pixelsPerSecond, size);
      },
      child: new Align(
        alignment: _dragAlignment,
              child: new Material(
          child: new Stack(
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.grey.shade700,
                        offset: new Offset(0.0, 5.0),
                        blurRadius: 15.0)
                  ],
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                height: MediaQuery.of(context).size.height * 0.78,
                width: MediaQuery.of(context).size.width - 10.0,
                child: new ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: new Image(
                      fit: BoxFit.cover,
                      image: new AssetImage("assets/images/person3.jpg")),
                ),
              ),
              new Positioned(
                bottom: ScreenUtil().setHeight(40.0),
                left: ScreenUtil().setWidth(40.0),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Row(
                      mainAxisSize: MainAxisSize.min,
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
                  width: MediaQuery.of(context).size.width - 10.0,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      gradient: new LinearGradient(
                          colors: [Colors.transparent, Colors.black54],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1.0])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

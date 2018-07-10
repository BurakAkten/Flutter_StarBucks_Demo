import 'package:flutter/material.dart';
import 'Circle_draw.dart';

class Circle extends StatefulWidget {

  double _rewardNumber;
  final _max = 15;

  Circle(this._rewardNumber);

  @override
  State<StatefulWidget> createState() => CircleState();
}

class CircleState extends State<Circle> with SingleTickerProviderStateMixin {

  CirclePainter _painter;
  Animation<double> _animation;
  AnimationController _controller;
  double _fraction = 0.0;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    _painter = CirclePainter(widget._rewardNumber, _fraction , _controller);

    return new Column(
      children: <Widget>[
        new Expanded(
          child: new Align(
            alignment: FractionalOffset.center,
            child: new AspectRatio(
              aspectRatio: 1.0,
              child: new Stack(
                children: <Widget>[
                  new Positioned.fill(
                    child: new AnimatedBuilder(
                        animation: _controller,
                        builder: (BuildContext context , Widget child){
                          return new CustomPaint(
                            painter: _painter
                          );
                        }
                    ),
                  ),
                  new Align(
                    alignment: FractionalOffset.center,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.all(12.0),
                          child:  new Image.asset(
                            "images/starbucks-coffee-cup.jpg",
                            width: 35.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        new Expanded(
                            child: new Text("${widget._rewardNumber.toInt()}/${widget._max}",
                              style: new TextStyle(color: Colors.white),
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          )
        )
      ],
    );
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
}
import 'package:flutter/material.dart';
import './Shape/Circle_Animate.dart';

class Reward_Animation extends StatefulWidget{
  double _animation_count;

  Reward_Animation(this._animation_count);

  @override
  _Reward_Animation  createState() => _Reward_Animation();

}

class _Reward_Animation extends State<Reward_Animation>{

  @override
  Widget build(BuildContext context) {

    return new Container(
      child: new Center(
        child:  new Circle(widget._animation_count)
      ),
    );
  }
}
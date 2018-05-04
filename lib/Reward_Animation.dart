import 'package:flutter/material.dart';


class Reward_Animation extends StatefulWidget{
  int _animation_count;

  Reward_Animation(this._animation_count);

  @override
  _Reward_Animation  createState() => _Reward_Animation(_animation_count);

}

class _Reward_Animation extends State<Reward_Animation>{

  int _animation_count;
  _Reward_Animation(this._animation_count); //constructor

  @override
  Widget build(BuildContext context) {

    return new Container(
      child: new Center(
        child:  new Image.asset(
          "images/Starbucks_Corporation.png",
          width: 90.0,
          height: 90.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }







}
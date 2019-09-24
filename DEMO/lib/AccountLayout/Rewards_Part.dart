import 'package:flutter/material.dart';
import './Show_Rewards.dart';
import '../Reward_Animation.dart';



class Rewards_Part extends StatefulWidget{

  @override
  State createState() => new _Rewards_Part();
}

class _Rewards_Part extends State<Rewards_Part>{
  int _rewards;
  double _animation_count;

  @override
  void initState() {
    
    _animation_count = 42.0; //must taken from the beginning of the app.
    _rewards =_animation_count ~/ 15;
    super.initState();
  }

  void handleTap(){//according to animation
    this.setState((){
      _rewards++;
    });
  }


  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new InkWell(
        onTap: () => handleTap(),
          child:  Container(
            padding: EdgeInsets.only(left : 40.0 , right: 40.0 , top: 40.0 , bottom: 50.0),
            child: new Center(
                child: new Row(
                  children: <Widget>[
                    new Expanded(child: new Reward_Animation(_animation_count % 15),),
                    new Show_Rewards(_rewards),
                  ],
                ),
            ),
          ),
      ),
    );
  }

}
import 'package:flutter/material.dart';


class Show_Rewards extends StatelessWidget{
  int _rewards;

  Show_Rewards(this._rewards);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(left:80.0),
      child:  new Center(
        child: Column(
          children: <Widget>[
            new Expanded(
              child:new Text("REWARDS" , style: new TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20.0),),
            ),
            new Expanded(
              child:new Text("Your Rewards" , style: new TextStyle(color: Colors.grey , fontSize: 16.0 ),),
            ),
            new Expanded(
              child: new Text("$_rewards" , style: new TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20.0),),
            ),
            new Expanded(
              child:new Text("PIECE(S)" , style: new TextStyle(color: Colors.grey , fontSize: 16.0),),
            ),
          ],
        ) ,
      ),
    );
  }
}
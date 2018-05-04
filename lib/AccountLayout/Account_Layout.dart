import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './Payment_Part.dart';
import './Rewards_Part.dart';
import './Message_Part.dart';
import './Info_Part.dart';
import '../Menu_Part.dart';



class Account_Layout extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.transparent,

      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        title: new Text("My Account", style: new TextStyle(color: Colors.white),),
        elevation: defaultTargetPlatform==TargetPlatform.iOS ? 5.0:0.0,
      ),

      drawer: new Menu_Part(), //Menu
      //layout Part
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Payment_Part(),
              new Rewards_Part(),
              new Message_Part(),
              new Info_Part(),
            ],
          ),
        ],
      ),
    );
  }
}
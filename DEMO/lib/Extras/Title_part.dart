import 'package:flutter/material.dart';



class Title_ extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    int number = 41;
    return new Container(

      padding: EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: new Text("Hello EveryBody" , style: new TextStyle(fontWeight: FontWeight.bold),),
                ),
                new Text("You are under attack." , style: new TextStyle(color: Colors.brown),)
              ],
            ),
          ),
          new Icon(Icons.star , color: Colors.red,),
          new Text(number.toString())
        ],
      ),
    );
  }





}
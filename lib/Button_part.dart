import 'package:flutter/material.dart';

class Button_ extends StatelessWidget{


  Column new_Col(Icon icon , String signature){
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        new Container(
          padding: EdgeInsets.only(top: 8.0),
          child: new Text(signature , style: new TextStyle(color: Colors.indigo),)
          ,
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(top: 8.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new_Col(new Icon(Icons.call , color: Colors.indigo,),"CALL"),
          new_Col(new Icon(Icons.near_me,color: Colors.indigo,) , "ROUTE"),
          new_Col(new Icon(Icons.share,color: Colors.indigo,) , "SHARE"),

        ],
      ),
    );
  }


}
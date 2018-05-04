import 'package:flutter/material.dart';



class Text_ extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    String text = "Lake Oeschinen lies at the foot of the Blüemlisalp in the"
            +" Bernese Alps. Situated 1,578 meters above sea level, it is one of the"
            + " larger Alpine Lakes. A gondola ride from Kandersteg, followed by"
            +" a half-hour walk through pastures and pine forest, leads you to "
            +"the lake, which warms to 20 degrees Celsius in the summer. "
            +"Activities enjoyed here include rowing, and riding the summer"
            +" toboggan run.";
    return new Container(
      padding: EdgeInsets.all(32.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Text(text , softWrap: true,)
        ],
      ),
    );
  }
}
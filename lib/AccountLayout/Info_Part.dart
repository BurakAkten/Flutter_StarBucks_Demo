import 'package:flutter/material.dart';



class Info_Part extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        new Expanded(
          child: new InkWell(
            onTap: () => print("On The go"),
            child: new Container(
              padding:  EdgeInsets.only(top:35.0 , bottom: 35.0, left: 30.0,right: 45.0),
              alignment: Alignment(0.0, 0.0),
              child: new Center(
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text ("STARBUCKS" , style: new TextStyle(color: Colors.white , fontSize: 8.0 , fontWeight: FontWeight.bold),),
                    new Container(
                        padding: EdgeInsets.only(left: 6.0 , top: 1.0),
                        child: new Text("on the go" , style: new TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 16.0 , fontStyle: FontStyle.italic),)
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        new Expanded(
          child: new InkWell(
            onTap: () => print("History"),
            child: new Container(
              padding: EdgeInsets.only(top:35.0 , bottom: 35.0, left: 45.0,right: 45.0),
              child: new Text ("Account History" , style: new TextStyle(color: Colors.white , fontSize: 18.0 , fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ],
    );
  }
}

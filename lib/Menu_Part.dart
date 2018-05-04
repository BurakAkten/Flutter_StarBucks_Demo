import 'package:flutter/material.dart';


class Menu_Part extends StatefulWidget{

  @override
  State createState() => new _Menu_Part();
}

class _Menu_Part extends State<Menu_Part>{

  @override
  Widget build(BuildContext context) {
    return new Drawer(

      child: new ListView(

        children: <Widget>[
          new Padding(padding: EdgeInsets.only(top: 12.0)),
          new ListTile(

            title: new Text("BURAK"),
            subtitle: new Text("Account & Setting"),
            leading: new CircleAvatar(
              backgroundImage: new AssetImage("images/Starbucks_Corporation.png"),
            ),
            onTap: () {},
          ),
          new ListTile(
            title: new Text("My Account"),
            onTap: () {},
          ),
          new ListTile(
            title: new Text("KahveDünyasi Card"),
            onTap: () {},
          ),
          new ListTile(
            title: new Text("Rewards"),
            onTap: () {},
          ),
          new ListTile(
            title: new Text("Stores"),
            onTap: () {},
          ),
          new ListTile(
            title: new Text("Messages"),
            onTap: () {},
          ),
          new ListTile(
            title: new Text("Products"),
            onTap: () {},
          ),
          new ListTile(
            title: new Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text ("STARBUCKS",style: new TextStyle(fontSize: 8.0), ),
                new Container(
                    padding: EdgeInsets.only(left: 6.0 , top: 1.0),
                    child: new Text("on the go" , style: new TextStyle( fontWeight:FontWeight.bold, fontStyle: FontStyle.italic),)
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
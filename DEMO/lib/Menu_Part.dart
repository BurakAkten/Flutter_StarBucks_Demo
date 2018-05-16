import 'package:flutter/material.dart';
import './AccountLayout/Account_Layout.dart';
import './AccountLayout/Account_Settings.dart';
//AIzaSyBM924OWOzABEN64IJaG3-C0fMhc5u7dY8


class Menu_Part extends StatefulWidget{

  @override
  State createState() => new _Menu_Part();
}

class _Menu_Part extends State<Menu_Part>{
  var _hero = new Hero(

      tag: 'Account_settings',
      child:new CircleAvatar(
        radius: 20.0,
        backgroundImage: new AssetImage("images/Starbucks_Corporation.png"),
      ),
  );

  @override
  Widget build(BuildContext context) {
    var _Textcolor = Colors.grey;
    return new Drawer(
      child: new Container(
        color: Colors.black12,
        child: new ListView(
          children: <Widget>[
            new Padding(padding: EdgeInsets.only(top: 12.0)),
            new ListTile(
              title: new Text("BURAK" , style: new TextStyle(color: _Textcolor),),
              subtitle: new Text("Account & Setting" , style: new TextStyle(color: _Textcolor),),
              leading: _hero,
              onTap: () {
                //Navigator.pop(context);
                Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Account_Settings()));
              },
            ),
            new ListTile(
              title: new Text("My Account" , style: new TextStyle(color: _Textcolor),),
              onTap: () {
                Navigator.pop(context , new MaterialPageRoute(builder: (context) => new Account_Layout()));
              },
            ),
            new ListTile(
              title: new Text("Starbucks Card",style: new TextStyle(color: _Textcolor),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text("Rewards",style: new TextStyle(color: _Textcolor),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text("Stores",style: new TextStyle(color: _Textcolor),),
              onTap: () {},
            ),
            new ListTile(
              title: new Text("Messages",style: new TextStyle(color: _Textcolor),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text("Products",style: new TextStyle(color: _Textcolor),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text ("STARBUCKS",style: new TextStyle(fontSize: 8.0 ,color: _Textcolor), ),
                  new Container(
                      padding: EdgeInsets.only(left: 6.0 , top: 1.0),
                      child: new Text("on the go" , style: new TextStyle( color:_Textcolor ,fontWeight:FontWeight.bold, fontStyle: FontStyle.italic),)
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';



class Account_Settings extends StatefulWidget{

  @override
  State createState() => new _Account_Settings();

}

class _Account_Settings extends State<Account_Settings>{

   var _hero = new Hero(//can be used PhotoHero
      tag: 'Account_settings',
      child:new CircleAvatar(
        radius: 50.0,
        backgroundImage: new AssetImage("images/Starbucks_Corporation.png"),
      )
  );
   var _onChanged1 = false;
   var _onChanged2 = false;
   var _onChanged3 = false;



   void _OnChanged(bool value , int which){
    setState(()  {
      switch(which) {
        case 1 : _onChanged1 = value; break;
        case 2 : _onChanged2 = value; break;
        case 3 : _onChanged3 = value; break;
      }
    });
  }


  @override
  Widget build(BuildContext context) {

     var _listView = new ListView(
      children: <Widget>[
        new Center( // first photo part
            child: new Container(
              padding:new EdgeInsets.only(top: 30.0),
              child: new Column(
                children: <Widget>[
                  new InkWell(
                    child: _hero,
                    onTap: () => print("hello bitches"),
                  ),
                ],
              ),
            )
        ),
        new Center(
          child: new Container(
            padding: new EdgeInsets.only(top: 6.0 , bottom: 14.0),
            child: new Column(
              children: <Widget>[
                new Text("BURAK" , style: new TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 18.0),),
                new Text("burak_akten@hotmail.com" , style: new TextStyle(color: Colors.grey),)
              ],
            ),
          ),
        ),
        new _Container("Edit Personal Info", new Icon(Icons.chevron_right)),
        new Container(
          padding: new EdgeInsets.all(20.0),
        ),
        new _Container("My Credit Cards", new Icon(Icons.chevron_right)),
        new _Container("My Favorite Products", new Icon(Icons.chevron_right)),
        new _Container("Change Passwords", new Icon(Icons.chevron_right)),
        new Container(
          padding: new EdgeInsets.only(top: 30.0 , left: 10.0 , bottom: 10.0),
          child: new Text("NOTIFICATIONS" , style: new TextStyle(fontWeight: FontWeight.normal , color: Colors.grey),),
        ),
        new _Container("Messages", new Switch(value: _onChanged1, onChanged: (bool value){_OnChanged(value , 1);})),
        new _Container("E-mails", new Switch(value: _onChanged2, onChanged: (bool value){_OnChanged(value , 2);})),
        new _Container("SMS", new Switch(value: _onChanged3, onChanged: (bool value){_OnChanged(value , 3);})),
        new Container(
          padding: new EdgeInsets.all(20.0),
        ),
        new _Container("Shake To Pay", new Icon(Icons.chevron_right)),
        new Container(
          padding: new EdgeInsets.all(20.0),
        ),
        new Container(
            color: Colors.grey,
            child: new ListTile(
              title: new Center(
                child:new Text("SIGN OUT" , style: new TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),
              ),
              onTap: () => print("BYE"),
            )
        )
      ],
    );

    return new Material(
      child: new Scaffold(
        appBar: new AppBar(
          iconTheme: new IconThemeData(color: Colors.black45),
          title: new Text("ACCOUNT & SETTINGS",style: new TextStyle(color: Colors.black45 , fontWeight: FontWeight.bold),),
          backgroundColor: Colors.grey[300],
        ),
        backgroundColor: Colors.grey[300],
        body: _listView,
      ),
    );
  }
}



class _Container extends StatelessWidget{

  String _text;
  Widget _widget;

  _Container(this._text , this._widget);//put on tap if icon is >

  @override
  Widget build(BuildContext context) {

    return new Container(
        color: Colors.white,
        child: new ListTile(
          title: new Text(_text),
          trailing: _widget
        )
    );
  }
}
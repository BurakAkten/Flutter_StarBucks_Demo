import 'package:flutter/material.dart';


class Message_Part extends StatefulWidget{

  @override
  State createState() => new _Message_Part();

}


class _Message_Part extends State<Message_Part>{

  List<String> _messages = new List<String>();//create a class that hold messages and info about read or not
  String _message;


  @override
  void initState() {//will be change

    _messages.add("This is first message.");
    _messages.add("This is second message.");
    _messages.add("This is third message.");
    _messages.add("This is forth message.");
    _messages.add("This is fifth message.");
    _message = "No Recent Messages";
    super.initState();
  }

  void handleTap(){
    this.setState(() {
      _messages.shuffle();
      _message = _messages.first;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        new Expanded(
          child: new InkWell(
            onTap: () => print("Messages"),
            child: new Container(
              padding: EdgeInsets.only(top:35.0 , bottom: 35.0, left: 45.0,right: 45.0),
              child: new Center(
                child: new Text ("MESSAGES" , style: new TextStyle(color: Colors.white , fontSize: 18.0 , fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        ),
        new Expanded(
          child: new InkWell(
            onTap: () => handleTap(),
            child: new Container(
              padding: EdgeInsets.only(top:35.0 , bottom: 35.0, left: 45.0,right: 45.0),
              child: new Center(
                child: _messages.length == 0 ? new Text ("No Recent Message." , style: new TextStyle(color: Colors.grey , fontSize: 16.0),):new Text (_message , style: new TextStyle(color: Colors.grey , fontSize: 16.0),),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

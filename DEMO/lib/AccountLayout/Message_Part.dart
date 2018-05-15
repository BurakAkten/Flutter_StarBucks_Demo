import 'package:flutter/material.dart';
import './Message.dart';
import './Messages_View.dart';


class Message_Part extends StatefulWidget{

  @override
  State createState() => new _Message_Part();

}


class _Message_Part extends State<Message_Part>{

  List<Message> _messages = new List<Message>();//create a class that hold messages and info about read or not
  String _message;
  int _index = 0;



  @override
  void initState() {//will be change
    _messages.add(new Message("This is first message."));
    _messages.add(new Message("This is second message."));
    _messages.add(new Message("This is third message."));
    _messages.add(new Message("This is forth message."));
    _messages.add(new Message("This is fifth message."));
    _messages.shuffle();
    _message = _messages.elementAt(0).getMessage();
    _index = 0;
    super.initState();
  }

  void handleTap(){
    this.setState(() {
      _messages.elementAt(_index).makeRead();
      int i = 0;
      for (i = 0 ; i < _messages.length; i++){
        if (!_messages.elementAt(i).isRead()){
          _message = _messages.elementAt(i).getMessage();
          _index = i;
          break;
        }
      }

      _message = i == _messages.length ? "No Recent Messages" : _message;
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
            onTap: () => this.setState(() {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Messages_View(_messages)));
            }),
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
                child: _messages.length == 0 ? new Text ("No Message." ,
                  style:
                  new TextStyle(color: Colors.grey , fontSize: 16.0),):
                  new Text (_message , style: new TextStyle(color: Colors.grey , fontSize: 16.0),),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

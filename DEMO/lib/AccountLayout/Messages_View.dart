import 'package:flutter/material.dart';
import './Message.dart';


class Messages_View extends StatefulWidget{

  List<Message> _messages;

  Messages_View(this._messages);

  @override
  State createState() => _Messages_View();
}

class _Messages_View extends State<Messages_View>{

  @override
  void initState() {
    super.initState();
  }


  void handleTap(index){//make every list item read

    this.setState(() {

      widget._messages.elementAt(index).makeRead();

    });
  }


  void _dialogAction(bool delete ,int index){
    this.setState(() {
      delete == true ? widget._messages.removeAt(index) : print("Not deleted!");
    });

    Navigator.pop(context);

  }
  void _showAlertDialog(int index){

    AlertDialog dialog = new AlertDialog(
      content: new Text("Do you want to delete the message?"),
      actions: <Widget>[
        new FlatButton(onPressed: () =>
            _dialogAction(true , index), child: new Text("Yes")),
        new FlatButton(onPressed: () =>
            _dialogAction(false , index), child: new Text("No")),

      ],
    );

    showDialog(context: context , child: dialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.cyan,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Messages" , style: new TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),
          iconTheme: new IconThemeData(color: Colors.white , size: 3.0),
          backgroundColor: Colors.black45,
        ),
        body: new Container(
          child: new Center(
            child: ListView.builder(
              itemCount: widget._messages.length,
              padding: EdgeInsets.only(bottom: 2.0),
              itemBuilder: (context, index) {
                return new ListTile(
                  onTap:() => handleTap(index),//every item tap controller
                  onLongPress: () => _showAlertDialog(index),
                  title: new Text('${widget._messages[index].getMessage()}' ,
                    style: !widget._messages[index].isRead() ?
                    new TextStyle(fontWeight: FontWeight.bold) :
                    new TextStyle(fontWeight: FontWeight.normal),
                  ),
                );
              },),
          ),
        ),
      )
    );
  }
}

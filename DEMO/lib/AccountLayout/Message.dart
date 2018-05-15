class Message{

  String _message;
  bool _read = false;

  Message(this._message);

  String getMessage(){return _message;}

  void makeRead(){_read = true; }

  bool isRead(){return _read;}

}
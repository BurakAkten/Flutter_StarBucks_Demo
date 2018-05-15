import 'package:flutter/material.dart';

class Payment_Part extends StatefulWidget{

  @override
  State createState() => new _Payment_Part();
}





class _Payment_Part extends State<Payment_Part>{

  int _balance = 0;

  @override
  void initState() {
    super.initState();
    _balance = 0;

  }
   void handleTab(){//must change
      this.setState(() {
        _balance++;
      });
   }


  @override
  Widget build(BuildContext context) {

    return new Expanded(
        child : new InkWell(
          onTap: () => handleTab(),
          child: new Container(
            padding: EdgeInsets.only(top: 5.0 , right: 15.0 , left: 15.0 , bottom: 5.0),
            child: new Row(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(8.0),
                  child:  new Image.asset(
                    "images/Starbucks_Corporation.png",
                    width: 50.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(left: 43.0),
                      child: new Text("MOBILE PAYMENT" , style: new TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20.0),),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //new Padding(padding: EdgeInsets.only(left: 54.0)),
                        new Text("BALANCE  " , style: new TextStyle(color: Colors.white  , fontSize: 19.0 , fontWeight: FontWeight.w100),),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),

                        new Text("   ₺ $_balance" , style:  new TextStyle(color: Colors.red , fontWeight: FontWeight.bold , fontSize: 19.0),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }

}
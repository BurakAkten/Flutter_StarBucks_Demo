/*
import 'package:flutter/material.dart';
import './Title_part.dart';
import './Button_part.dart';
import './Text_part.dart';


void main(){
  runApp(
      new MaterialApp(
        title: 'Flutter Demo',
        home: new Scaffold(
          backgroundColor: Colors.green,
          appBar: new AppBar(
            title: new Text('Top Lakes'),
          ),
          body: new ListView(
            children: [
              new Image.asset(
                'images/cover.jpg',
                width: 600.0,
                height: 240.0,
                fit: BoxFit.fill,
              ),
              new Title_(),
              new Button_(),
              new Text_(),
            ],
          ),
        ),
      ),
  );
}*/


import 'package:flutter/material.dart';
import './AccountLayout/Account_Layout.dart';

void main(){
  try {
    runApp(
      new MaterialApp(
        title: "KahveDünyasi",
        home: new Account_Layout(),
      ),
    );
  }catch(e){
    debugPrint(e.toString());
    return;
  }
}
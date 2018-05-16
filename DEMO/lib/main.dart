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
//import 'package:map_view/map_view.dart';
//import 'dart:async';
//var API_KEY = "IzaSyBM924OWOzABEN64IJaG3-C0fMhc5u7dY8";

void main(){
  try {
    runApp(
      new MaterialApp(
        title: "STARBUCKS",
        home: new Account_Layout(),
      ),
    );
  }catch(e){
    debugPrint(e.toString());
    print(e.toString());
    return;
  }
    /*MapView.setApiKey(API_KEY);
    runApp(new MyApp());*/
}


/*
class MyApp extends StatelessWidget {
  var mapView = new MapView();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Container(
        child: new InkWell(
          onTap: () => showMap(),
        ),
      ),
    );
  }

  showMap() {
    mapView.show(
        new MapOptions(
            mapViewType: MapViewType.normal,
            showUserLocation: true,
            initialCameraPosition: new CameraPosition(
                new Location(45.5235258, -122.6732493), 14.0),
            title: "Recently Visited"),
        toolbarActions: [new ToolbarAction("Close", 1)]);
  }

}*/
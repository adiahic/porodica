import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

FlatButton dugme({
  String clan,
  String zvuk,
}) {
  return FlatButton(
    child: Text(
      clan,
      style: TextStyle(fontSize: 55.0, color: Colors.lightBlue),
      textAlign: TextAlign.center,
    ),
    onPressed: () {
      final player = AudioCache();
      player.play(zvuk);
      print('klik ok');
    },
  );
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'GochiHand',
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 35.0),
        ),
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Porodica Ahic',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 8.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.orange,
              height: 7.0,
              width: 250.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  dugme(clan: 'tata', zvuk: 'Babo.m4a'),
                  SizedBox(
                    width: 25.0,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/babo.jpg'),
                    radius: 50.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('images/mama.JPG'),
                    radius: 50.0,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  dugme(clan: 'mama', zvuk: 'Mama.m4a'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  dugme(clan: 'Dino', zvuk: 'Dino.m4a'),
                  SizedBox(
                    width: 25.0,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/dino.jpg'),
                    radius: 50.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('images/kan.jpg'),
                    radius: 50.0,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  dugme(clan: 'Kanano', zvuk: 'Kan.m4a'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

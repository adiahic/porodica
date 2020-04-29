import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

import 'adi.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
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
                  FlatButton(
                      child: Text(
                        'Porodica Ahic',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 8.0,
                        ),
                      ),
                      onPressed: () {
                        final player = AudioCache();
                        player.play('Ahic.m4a');
                      }),
                ],
              ),
            ),
            Container(
              color: Colors.lightGreen,
              height: 7.0,
              width: 250.0,
            ),
            adi(),
            mama(),
            dino(),
            kan(),
          ],
        ),
      ),
    );
  }
}

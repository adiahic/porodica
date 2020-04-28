import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:shape_of_view/shape_of_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

dugme({
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

Expanded _adi() {
  return Expanded(
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
  );
}

Expanded _mama() {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ShapeOfView(
          shape: StarShape(noOfPoints: 5),
          child: Container(
            child: Image.asset('images/mama.png'),
          ),
        ),
        SizedBox(
          width: 25.0,
        ),
        dugme(clan: 'mama', zvuk: 'Mama.m4a'),
      ],
    ),
  );
}

Expanded _dino() {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        dugme(clan: 'Dino', zvuk: 'Dino.m4a'),
        ShapeOfView(
          elevation: 4,
          height: 100,
          shape: DiagonalShape(
              position: DiagonalPosition.Bottom,
              direction: DiagonalDirection.Right,
              angle: DiagonalAngle.deg(angle: 10)),
          child: Container(
            child: Image.asset('images/dino.jpg'),
          ),
        ),
      ],
    ),
  );
}

Expanded _kan() {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ShapeOfView(
          shape: TriangleShape(
              percentBottom: 0.5, percentLeft: 0, percentRight: 0),
          child: Container(
            child: Image.asset('images/kan.jpg'),
          ),
        ),
        SizedBox(
          width: 25.0,
        ),
        dugme(clan: 'Kanano', zvuk: 'Kan.m4a'),
      ],
    ),
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
            _adi(),
            _mama(),
            _dino(),
            _kan(),
          ],
        ),
      ),
    );
  }
}

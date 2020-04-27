import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
                  Text(
                    'Babo',
                    textAlign: TextAlign.center,
                  ),
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
                  Text('Mama'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Dino'),
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
                  Text('Kan'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

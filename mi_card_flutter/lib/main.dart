import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  minRadius: 20,
                  maxRadius: 60,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('images/luca.jpg'),
                ),
                Text(
                  'Luca Spalierno',
                  style: TextStyle(fontFamily: 'Kalam', fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'SOFTWARE ENGINEER',
                  style: TextStyle(fontFamily: 'SourceSansPro', fontSize: 17.0, color: Colors.blueGrey[100], letterSpacing: 2.5, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                  width: 250.0,
                  child: Divider(
                    color: Colors.blueGrey[100],
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    title: Text(
                      '+39 3889270588',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'spalierno@gmail.com',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Navigation',
      home: MyApp(),
    ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Glove Chemical, LLC'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.add_comment),
                iconSize: 250,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }),
            Icon(Icons.arrow_upward, size: 125),
            Text(
              'PRESS HERE FOR STOP',
              style: TextStyle(fontSize: 50),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Glove Chemical, LLC"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_app/Pages/LoginPage.dart';

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
        backgroundColor: Colors.red[800],
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
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}





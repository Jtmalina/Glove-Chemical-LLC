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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Phone Number:',
                  style: TextStyle(
                    fontSize: 25,
                    //background: Paint()..color = Colors.grey
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  enableInteractiveSelection: true,
                  autocorrect: true,
                  autofocus: true,
                  enabled: true,
                  textAlign: TextAlign.center,
                  maxLength: 13,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "(xxx)xxx-xxxx"
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'PO/DEPARTMENT:',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child:TextField(
                  enableInteractiveSelection: true,
                  autocorrect: true,
                  autofocus: true,
                  enabled: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "xxxx"
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child:Text(
                  'NEW USERS:',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Facility Name:',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  enableInteractiveSelection: true,
                  autocorrect: true,
                  enabled: true,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "xxxx"
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Facility Address',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  enableInteractiveSelection: true,
                  autocorrect: true,
                  autofocus: true,
                  enabled: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Address, City, State, Zip",
                  ),
                ),
              ),

              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotePage()),
                  );
                },
                child: Text('Save/Send Note'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotePage extends StatelessWidget {
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
//test
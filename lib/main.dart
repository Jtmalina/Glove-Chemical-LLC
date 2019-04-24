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

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Glove Chemical, LLC"),
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.grey,
                width: 450.0,
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
                color: Colors.grey,
                width: 450.0,
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
                color: Colors.grey,
                width: 450.0,
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
                color: Colors.grey,
                width: 450.0,
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
                  maxLines: 5,
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
              Container(
                padding: EdgeInsets.all(10),
                child: ButtonTheme(
                  minWidth: 300,
                  height: 45,
                  child: RaisedButton(
                    child: Text('Save/Send Note'),
                    textColor: Colors.white,
                    color: Colors.red[800],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotePage()),
                      );
                    },

                  ),
                ),
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
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.grey,
                width: 450.0,
                padding: EdgeInsets.all(10),
                child: Text(
                  'New Note:',
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
                  maxLines: 4,
                  autofocus: true,
                  enabled: true,
                  textAlign: TextAlign.center,
                  maxLength: 13,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "-Add Notes Here!"
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: ButtonTheme(
                  minWidth: 300,
                  height: 45,
                  child: RaisedButton(
                    color: Colors.red[800],
                    textColor: Colors.white,
                    onPressed: () {

                    },
                    child: Text('Save Note'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey,
                width: 450.0,
                child: Text(
                  'Saved Note:',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child:TextField(
                  enableInteractiveSelection: true,
                  autocorrect: true,
                  maxLines: 8,
                  autofocus: true,
                  enabled: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "-Your Saved Notes Appear Here!"
                  ),
                ),
              ),
              ButtonTheme(
                minWidth: 300,
                height: 45,
                child: RaisedButton(
                  color: Colors.red[800],
                  textColor: Colors.white,
                  onPressed: () {

                  },
                  child: Text('Reset'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
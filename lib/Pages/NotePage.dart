import 'package:flutter/material.dart';


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
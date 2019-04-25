import 'package:flutter/material.dart';
import 'package:test_app/Pages/NotePage.dart';

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
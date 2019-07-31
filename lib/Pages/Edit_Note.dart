
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_app/services/authentication.dart';
import 'package:test_app/Pages/Database.dart';

class EditNotePage extends StatefulWidget {
  static String routeName = '/edit_note';

  final String noteKey;
  final BaseAuth auth;

  EditNotePage({Key key, this.noteKey, this.auth}) : super(key: key);


  @override
  _EditNotePageState createState() => new _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  final _nameFieldTextController = new TextEditingController();

  StreamSubscription _subscriptionName;




  @override
  void initState() {
    _nameFieldTextController.clear();
    widget.auth.getUserEmail().then((result){
      setState((){
        String email = result;
        Database.getNameStream(widget.noteKey, _updateName, email)
            .then((StreamSubscription s) => _subscriptionName = s);
      });
    });


    super.initState();
  }

  @override
  void dispose() {
    if (_subscriptionName != null) {
      _subscriptionName.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Edit Note"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new TextField(
              controller: _nameFieldTextController,
              decoration: new InputDecoration(
                  icon: new Icon(Icons.edit),
                  labelText: "Note Name",
                  hintText: "Enter the note name..."
              ),
              onChanged: (String value) {
                widget.auth.getUserEmail().then((result){
                  setState((){
                    String email = result;
                    Database.saveName(widget.noteKey, value, email);
                  });
                });

              },
            ),
          )
        ],
      ),
    );
  }

  void _updateName(String name) {
    _nameFieldTextController.value = _nameFieldTextController.value.copyWith(
      text: name,
    );
  }
}

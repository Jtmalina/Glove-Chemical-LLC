import 'dart:async';

import 'package:firebase_database/firebase_database.dart';

class Database {

  static Future<String> createMountain() async {
    String accountKey = await _getAccountKey();

    var mountain = <String, dynamic>{
      'name' : '',
    };

    DatabaseReference reference = FirebaseDatabase.instance
        .reference()
        .child("accounts")
        .child(accountKey)
        .child("mountains")
        .push();

    reference.set(mountain);

    return reference.key;
  }

  static Future<void> saveName(String noteKey, String name, String email) async {

    return FirebaseDatabase.instance
        .reference()
        .child("accounts")
        .child(email)
        .child(noteKey)
        .child('name')
        .set(name);
  }

  static Future<StreamSubscription<Event>> getNameStream(String noteKey,
      void onData(String name), String email) async{

    StreamSubscription<Event> subscription = FirebaseDatabase.instance
        .reference()
        .child("accounts")
        .child(email)
        .child(noteKey)
        .child("name")
        .onValue
        .listen((Event event) {
      String name = event.snapshot.value as String;
      if (name == null) {
        name = "";
      }
      onData(name);
    });

    return subscription;
  }

  /*static Future<Query> queryMountains() async {
    String accountKey = await _getAccountKey();

    return FirebaseDatabase.instance
        .reference()
        .child("accounts")
        .child(accountKey)
        .child("mountains")
        .orderByChild("name");
  }*/
}

Future<String> _getAccountKey() async {
  return '12345678';
}
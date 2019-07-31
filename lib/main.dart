import 'package:flutter/material.dart';
import 'package:test_app/services/authentication.dart';
import 'package:test_app/pages/root_page.dart';
import 'package:test_app/Pages/Edit_Note.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Glove Chemical LLC',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: <String, WidgetBuilder>{
          EditNotePage.routeName: (context) => new EditNotePage(),
        },
        home: new RootPage(auth: new Auth()));
  }
}





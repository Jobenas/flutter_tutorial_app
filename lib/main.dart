import "package:tutorial_app/drawer.dart";
import "package:tutorial_app/name_card_widget.dart";
import "package:tutorial_app/pages/home_page.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

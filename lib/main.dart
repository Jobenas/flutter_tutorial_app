import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
   )
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(
        height: 500,
        color: Colors.teal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.red,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.yellow,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.green,
              alignment: Alignment.center,
            ),
          ]
        ),
      ),
    );
  }

}
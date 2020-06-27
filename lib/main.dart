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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red,
            // shape: BoxShape.circle
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.yellow
              ]
              ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10
              )
            ]
          ),
          child: Text(
            "I am Box",
            textAlign: TextAlign.center, 
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            )
          ),
        ),
      ),
    );
  }

}
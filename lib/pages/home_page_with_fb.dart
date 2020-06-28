import 'package:http/http.dart' as http;
import "package:flutter/material.dart";
import 'package:tutorial_app/pages/login_page.dart';
import 'package:tutorial_app/utils/constants.dart';
import '../widgets/drawer.dart';
import 'dart:convert';

class HomePageFB extends StatelessWidget {
  Future fetchData() async {
    final url = "https://jsonplaceholder.typicode.com/photos";
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    // setState(() {});
    return data;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs.setBool("loggedIn", false);
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          )
        ],
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Fech Something"),
              );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(child: Text("Some error happened"));
              }
              return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(snapshot.data[index]["title"]),
                        subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
                        leading: Image.network(snapshot.data[index]["url"]));
                  },
                  itemCount: snapshot.data.length);
          }
        },
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change My Name";
  TextEditingController _nameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Card(
                child: Column(
              children: <Widget>[
                Image.asset("assets/coding_img1.jpg"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Some Text",
                      labelText: "Name"),
                )
              ],
            )),
          ),
        ),
      ),
      drawer: Drawer(
          child: ListView(padding: const EdgeInsets.all(0), children: <Widget>[
        UserAccountsDrawerHeader(
            accountName: Text("jobenas"),
            accountEmail: Text("jobenas@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/937730650307776513/16A6uQpM_400x400.jpg"),
            )),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("jobenas"),
          subtitle: Text("Dev"),
          trailing: Icon(Icons.edit),
          onTap: () {},
        ),
        ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("jobenas@gmail.com"),
            trailing: Icon(Icons.send))
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}

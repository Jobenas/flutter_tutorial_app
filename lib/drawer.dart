import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    ]));
  }
}

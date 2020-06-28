import 'package:shared_preferences/shared_preferences.dart';
import "package:tutorial_app/pages/home_page.dart";
import 'package:tutorial_app/pages/login_page.dart';
import "package:flutter/material.dart";
import 'package:tutorial_app/utils/constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
            Constants.prefs.get("loggedIn") == true ? HomePage() : LoginPage(),
        theme: ThemeData(primarySwatch: Colors.blue),
        routes: {
          LoginPage.routeName: (context) => LoginPage(),
          HomePage.routeName: (context) => HomePage()
        });
  }
}

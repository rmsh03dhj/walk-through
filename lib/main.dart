import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walk_through/root_screen.dart';
import 'package:walk_through/walk_through_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    runApp(MyApp(prefs: prefs));
  });
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;
  MyApp({this.prefs});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walk Through Screen for Shopping App',
      routes: <String, WidgetBuilder>{
        '/walkthrough': (BuildContext context) => new WalkThroughScreen(),
        '/root': (BuildContext context) => new RootScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.grey,
      ),
      home: _handleCurrentScreen(),
    );
  }

  Widget _handleCurrentScreen() {
    bool seen = (prefs.getBool('seen') ?? false);
//    if (seen) {
//      return new RootScreen();
//    } else {
      return new WalkThroughScreen(prefs: prefs);
//    }
  }
}

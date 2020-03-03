import 'package:flutter/material.dart';
import 'package:walk_through/welcome_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}

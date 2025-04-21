import 'package:bbotsscoutingapp2025/constants.dart';
import 'package:flutter/material.dart';

class Scout extends StatefulWidget {
  const Scout ({super.key});


  @override
  State<StatefulWidget> createState() => PreMatchState();
}

class PreMatchState extends State<Scout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${Constants.appTitle} Scout"),),
      body: Text("Test")
    );
  }
}
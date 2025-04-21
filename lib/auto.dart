import 'package:flutter/material.dart';
import 'package:bbotsscoutingapp2025/Constants.dart';
class Auto extends StatefulWidget {
  const Auto({super.key});

  @override
  State<StatefulWidget> createState() => AutoState();
}

class AutoState extends State<Auto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${Constants.appTitle} Auto"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Text("Auto"),
      ),
    );
  }
}
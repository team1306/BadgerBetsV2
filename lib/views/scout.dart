import 'package:flutter/material.dart';

class Scout extends StatefulWidget {
  const Scout({super.key});

  @override
  State<Scout> createState() => ScoutState();
}

class ScoutState extends State<Scout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Scout"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
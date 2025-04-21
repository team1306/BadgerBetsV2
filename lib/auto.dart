import 'package:flutter/material.dart';
import 'package:bbotsscoutingapp2025/Constants.dart';
import 'package:bbotsscoutingapp2025/Incrementer.dart';
import 'dart:developer' as developer;
class Auto extends StatefulWidget {
  const Auto({super.key});

  @override
  State<StatefulWidget> createState() => AutoState();
}

Incrementer l1 = Incrementer(label: "L1");
Incrementer l2 = Incrementer(label: "L2");
Incrementer l3 = Incrementer(label: "L3");

class AutoState extends State<Auto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("${Constants.appTitle} Auto"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
     body: Center(
  child: SizedBox(
    width: MediaQuery.of(context).size.width * 0.8,
    child: Column(
      children: [
        l1,
        l2,
        l3,
      ],
    ),
  ),
),
    );
  }
}

//Custom incrementer code



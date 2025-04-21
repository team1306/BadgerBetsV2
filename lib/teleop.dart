import 'package:bbotsscoutingapp2025/constants.dart';
import 'package:bbotsscoutingapp2025/end.dart';
import 'package:flutter/material.dart';

import 'incrementer.dart';

class Teleop extends StatefulWidget {
  const Teleop({super.key});

  @override
  State<StatefulWidget> createState() => TeleopState();
}

class TeleopState extends State<Teleop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${Constants.appTitle} Teleop"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            spacing: 50,
            children: [
              Incrementer.createNonNegativeIncrementer("L1"),
              Incrementer.createNonNegativeIncrementer("L2"),
              Incrementer.createNonNegativeIncrementer("L3"),
              Incrementer.createNonNegativeIncrementer("L4"),
              TextButton(
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => End()),
                    ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateColor.resolveWith(
                    (states) => const Color.fromARGB(255, 137, 14, 5),
                  ),
                  minimumSize: WidgetStatePropertyAll(Size(200, 60)),
                ),
                child: Text("End"),
              ),
            ],
          ),
        ),
      ),
    ); //end scaffold
  } //end widget
} //end class Teleop

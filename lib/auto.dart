import 'package:bbotsscoutingapp2025/constants.dart';
import 'package:bbotsscoutingapp2025/incrementer.dart';
import 'package:bbotsscoutingapp2025/teleop.dart';
import 'package:flutter/material.dart';

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
                      MaterialPageRoute(builder: (context) => Teleop()),
                    ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateColor.resolveWith(
                    (states) => const Color.fromARGB(255, 137, 14, 5),
                  ),
                  minimumSize: WidgetStatePropertyAll(Size(200, 60)),
                ),
                child: Text(
                  "Move to Teleop",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Custom incrementer code

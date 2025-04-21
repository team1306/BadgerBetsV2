import 'package:flutter/material.dart';
import 'package:bbotsscoutingapp2025/constants.dart';
import 'package:bbotsscoutingapp2025/incrementer.dart';
import 'package:bbotsscoutingapp2025/teleop.dart';
class Auto extends StatefulWidget {
  const Auto({super.key});

  @override
  State<StatefulWidget> createState() => AutoState();
}

Incrementer l1 = Incrementer(label: "L1");
Incrementer l2 = Incrementer(label: "L2");
Incrementer l3 = Incrementer(label: "L3");
Incrementer l4 = Incrementer(label: "L4");
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
        SizedBox(height: 50),
        l1,
        SizedBox(height: 50),
        l2,
        SizedBox(height: 50),
        l3,
        SizedBox(height: 50),
        l4,
        SizedBox(height: 50),
     TextButton(
                onPressed: () {
                  
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Teleop()));
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateColor.resolveWith((states) => const Color.fromARGB(255, 137, 14, 5)),
                  minimumSize: WidgetStatePropertyAll(Size(200, 60)),
                ),
                child: Text("Move to Teleop", style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
    ],
    ),
  ),
  
),
    );
  }
}

//Custom incrementer code



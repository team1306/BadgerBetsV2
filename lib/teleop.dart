import 'package:flutter/material.dart';
import 'package:bbotsscoutingapp2025/constants.dart';
import 'package:bbotsscoutingapp2025/incrementer.dart';
import 'package:bbotsscoutingapp2025/end.dart';

class Teleop extends StatefulWidget {
  const Teleop({super.key});

  @override
  State<StatefulWidget> createState() => TeleopState();
}
Incrementer teleopL1 = Incrementer(label: "L1");
Incrementer teleopL2 = Incrementer(label: "L2");
Incrementer teleopL3 = Incrementer(label: "L3");
Incrementer teleopL4 = Incrementer(label: "L4");

class TeleopState extends State<Teleop> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("${Constants.appTitle} Teleop"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child:Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                SizedBox(height: 50),
                teleopL1,
                SizedBox(height: 50),
                teleopL2,
                SizedBox(height: 50),
                teleopL3,
                SizedBox(height: 50),
                teleopL4,
                SizedBox(height: 50),
                TextButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => End())),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateColor.resolveWith((states) => const Color.fromARGB(255, 137, 14, 5)),
                    minimumSize: WidgetStatePropertyAll(Size(200, 60)),
                  ),
                  child: Text("Move to Teleop", style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      )
    );//end scaffold
  }//end widget
}//end class Teleop
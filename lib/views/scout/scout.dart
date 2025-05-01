import 'package:bbotsscoutingapp2025/viewmodels/scoutmanager.dart';
import 'package:bbotsscoutingapp2025/views/scout/auto.dart';
import 'package:bbotsscoutingapp2025/views/scout/end.dart';
import 'package:bbotsscoutingapp2025/views/scout/teleop.dart';
import 'package:flutter/material.dart';

class Scout extends StatefulWidget {
  final ScoutManager scoutManager;

  const Scout({super.key, required this.scoutManager});

  @override
  State<Scout> createState() => ScoutState();
}

class ScoutState extends State<Scout> {

  @override
  Widget build(BuildContext context) {
    widget.scoutManager.addListener(() => setState(() {}));

    print("User: " + widget.scoutManager.matchData.username);
    print("Match Number: " + widget.scoutManager.matchData.matchNumber.toString());
    print("Robot Number: " + widget.scoutManager.matchData.robotNumber.toString());
    print("Match Type: " + widget.scoutManager.matchData.matchType.toString());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Scout"),
      ),
      //TODO add widgets to switch between pages in this class, BELOW CLASSES SHOULD ONLY BE FOR SPECIFIC COUNTERS FOR THINGS
      body: Center(
        child: Builder(
          builder:
              (context) => 
                switch (widget.scoutManager.getCurrentPage()) {
                  PageType.auto => Auto(scoutManager: widget.scoutManager),
                  PageType.teleop => Teleop(scoutManager: widget.scoutManager),
                  PageType.end => End(scoutManager: widget.scoutManager),
                },
              
        ),
      ),
    );
  }
}

enum PageType {auto, teleop, end }

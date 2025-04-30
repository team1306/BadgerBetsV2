import 'package:bbotsscoutingapp2025/widgets/stateful_incrementer.dart';
import 'package:flutter/material.dart';

import '../../viewmodels/scoutmanager.dart';

class Auto extends StatefulWidget{
  final ScoutManager scoutManager;
  const Auto({super.key, required this.scoutManager});

  @override
  State<StatefulWidget> createState() => AutoState();
}

class AutoState extends State<Auto>{

  @override
  Widget build(BuildContext context) {
    widget.scoutManager.addListener(() => setState(() {}));

    return Scaffold(
      body: StatefulIncrementer(updateCallback: (value) => widget.scoutManager.setScoreData("auto.testkey", value), valueSupplier: () => widget.scoutManager.getScoreData("auto.testkey")),
    );
  }
}
import 'package:flutter/material.dart';

import '../../viewmodels/scoutmanager.dart';

class Teleop extends StatefulWidget{
  final ScoutManager scoutManager;
  const Teleop({super.key, required this.scoutManager});

  @override
  State<StatefulWidget> createState() => TeleopState();
}

class TeleopState extends State<Teleop>{

  @override
  Widget build(BuildContext context) {
    widget.scoutManager.addListener(() => setState);

    throw UnimplementedError();
  }
}
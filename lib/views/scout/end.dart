import 'package:flutter/material.dart';

import '../../viewmodels/scoutmanager.dart';

class End extends StatefulWidget{
  final ScoutManager scoutManager;
  const End({super.key, required this.scoutManager});

  @override
  State<StatefulWidget> createState() => EndState();
}

class EndState extends State<End>{

  @override
  Widget build(BuildContext context) {
    widget.scoutManager.addListener(() => setState);

    throw UnimplementedError();
  }
}
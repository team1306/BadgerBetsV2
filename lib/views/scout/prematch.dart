import 'package:flutter/material.dart';

import '../../matchdata.dart';
import '../../viewmodels/scoutmanager.dart';

class PreMatch extends StatefulWidget{
  final ScoutManager scoutManager;
  const PreMatch({super.key, required this.scoutManager});

  @override
  State<StatefulWidget> createState() => PreMatchState();
}

class PreMatchState extends State<PreMatch>{
  late MatchType matchType;
  late DropdownMenu<MatchType> matchTypeDropdown;
  
  @override
  Widget build(BuildContext context) {
    widget.scoutManager.addListener(() => setState);

    matchType = MatchType.qualification;
    matchTypeDropdown = DropdownMenu(
        width: double.infinity,
        initialSelection: MatchType.qualification,
        dropdownMenuEntries: [
          DropdownMenuEntry(label: "Practice", value: MatchType.practice),
          DropdownMenuEntry(label: "Qualification", value: MatchType.qualification),
          DropdownMenuEntry(label: "Playoff", value: MatchType.playoff),
        ],
        onSelected: (value) => setState(() => matchType = value!)
    );
    return Scaffold(
      //TODO implement
      body: matchTypeDropdown,
    );
  }
  
}
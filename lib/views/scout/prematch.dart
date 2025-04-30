import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../matchdata.dart';
import '../../viewmodels/scoutmanager.dart';

class PreMatch extends StatefulWidget{
  final ScoutManager scoutManager;
  const PreMatch({super.key, required this.scoutManager});

  @override
  State<StatefulWidget> createState() => PreMatchState();
}

class PreMatchState extends State<PreMatch>{
  MatchType matchType = MatchType.qualification;
  int? matchNumber;
  int? robotNumber;
  
  @override
  Widget build(BuildContext context) {
    widget.scoutManager.addListener(() => setState(() {}));

    matchType = MatchType.qualification;
    DropdownMenu<MatchType> matchTypeDropdown = DropdownMenu(
        width: double.infinity,
        initialSelection: MatchType.qualification,
        dropdownMenuEntries: [
          DropdownMenuEntry(label: "Practice", value: MatchType.practice),
          DropdownMenuEntry(label: "Qualification", value: MatchType.qualification),
          DropdownMenuEntry(label: "Playoff", value: MatchType.playoff),
        ],
        onSelected: (value) => setState(() => matchType = value!)
    );

    TextField matchNumberInput = TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onChanged: (value) => setState(() => matchNumber = int.parse(value)),
    );
    TextField robotNumberInput = TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onChanged: (value) => setState(() => robotNumber = int.parse(value)),
    );
    

    return Scaffold(
      //TODO implement
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          matchTypeDropdown,
          matchNumberInput,
          robotNumberInput,
          widget.scoutManager.getStartButton(matchNumber, robotNumber, matchType)
        ],
      ),
    );
  }
  
}
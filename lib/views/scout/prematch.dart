import 'package:bbotsscoutingapp2025/views/scout/scout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../matchdata.dart';
import '../../viewmodels/scoutmanager.dart';

class PreMatch extends StatefulWidget{
  const PreMatch({super.key});

  @override
  State<StatefulWidget> createState() => PreMatchState();
}

class PreMatchState extends State<PreMatch>{
  MatchType matchType = MatchType.qualification;
  int? matchNumber;
  int? robotNumber;

  TextButton getStartButton(int? matchNumber, int? robotNumber, MatchType matchType) {
    bool formComplete = matchNumber != null && robotNumber != null;

    return TextButton(
      onPressed: () {
        if (formComplete) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Scout(scoutManager: ScoutManager(matchNumber, robotNumber, matchType))));
        }
      },
      style: ButtonStyle(
          backgroundColor: WidgetStateColor.resolveWith((state) => formComplete ? Colors.yellow : Colors.grey)
      ),
      child: Text(
        "Start Scout",
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
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
          getStartButton(matchNumber, robotNumber, matchType)
        ],
      ),
    );
  }
  
}
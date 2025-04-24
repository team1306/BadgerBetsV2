import 'package:bbotsscoutingapp2025/matchdata.dart';
import 'package:bbotsscoutingapp2025/viewmodels/scoutmanager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Scout extends StatefulWidget {
  const Scout({super.key});

  @override
  State<Scout> createState() => ScoutState();
}

class ScoutState extends State<Scout> {
  late ScoutManager scoutManager;

  late MatchType matchType;
  late DropdownMenu<MatchType> matchTypeDropdown;

  ScoutState() {
    scoutManager = ScoutManager(scoutView: this);
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Scout"),
      ),
      body: Center(
        child : switch(scoutManager.getCurrentPage()) {
          ScoutPages.prematch => Column(
            children: [
              matchTypeDropdown
            ],
          ),
          ScoutPages.auto => Column(

          ),
          ScoutPages.teleop => Column(

          ),
          ScoutPages.postmatch => Column(

          )
        }
      ),
    );
  }
}
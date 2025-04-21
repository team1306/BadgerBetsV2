import 'package:bbotsscoutingapp2025/constants.dart';
import 'package:bbotsscoutingapp2025/pages/auto.dart';
import 'package:bbotsscoutingapp2025/match_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Scout extends StatefulWidget {
  const Scout ({super.key});


  @override
  State<StatefulWidget> createState() => PreMatchState();
}

class PreMatchState extends State<Scout> {

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuEntry> matchTypeOptions = [
      DropdownMenuEntry(value: MatchType.test, label:"Test"),
      DropdownMenuEntry(value: MatchType.practice, label: "Practice"),
      DropdownMenuEntry(value: MatchType.qualifier, label: "Qualifier"),
      DropdownMenuEntry(value: MatchType.playoff, label: "Playoff"),
    ];
    DropdownMenu matchTypeSelector = DropdownMenu(
      dropdownMenuEntries: matchTypeOptions,
      initialSelection: MatchType.qualifier,
      width: double.infinity,
      label: Text("Match Type"),
    );

    TextField matchNumberInput = TextField(
      keyboardType: TextInputType.number, 
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Match Number")
      ),
    );
    
    TextField teamNumberInput = TextField(
      keyboardType: TextInputType.number, 
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Team Number")
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("${Constants.appTitle} Scout"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: SizedBox( width: 300,
          child: Column(
            spacing: 10,
            children: [
              SizedBox(height: 10),
              Text("Select a match type"),
              matchTypeSelector,
              SizedBox(height: 10),
              Text("Enter a match number"),
              matchNumberInput,
              SizedBox(height: 10),
              Text("Enter a team number"),
              teamNumberInput,
              SizedBox(height: 50),
              TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Auto())),
                style: ButtonStyle(
                  backgroundColor: WidgetStateColor.resolveWith((states) => const Color.fromARGB(255, 137, 14, 5)),
                  minimumSize: WidgetStatePropertyAll(Size(200, 60)),
                ),
                child: Text("Scout this robot", style: TextStyle(color: Colors.white, fontSize: 20)),
              )
            ],
          ),
        )
      )
    );
  }
}
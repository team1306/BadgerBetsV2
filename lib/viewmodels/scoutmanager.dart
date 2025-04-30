import 'package:bbotsscoutingapp2025/matchdata.dart';
import 'package:bbotsscoutingapp2025/views/scout/scout.dart';
import 'package:flutter/material.dart';

class ScoutManager extends ChangeNotifier {
  PageType currentPage = PageType.preMatch;
  
  MatchData? matchData;

  TextButton getStartButton(int? matchNumber, int? robotNumber, MatchType matchType) {
    bool formComplete = matchNumber != null && robotNumber != null;

    return TextButton(
      onPressed: () {
        print("Button pressed");
        if (formComplete) startScout(matchNumber, robotNumber, matchType);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith((state) => formComplete ? Colors.yellow : Colors.grey)
      ),
      child: Text(
        "Start Scout",
      ),
    );
  }

  PageType getCurrentPage() {
    return currentPage;
  }
  
  void startScout(int matchNumber, int robotNumber, MatchType matchType) {
    print("Scout started");
    //TODO implement user data getting from storage
    String username = "";
    matchData = MatchData(username: username, matchNumber: matchNumber, robotNumber: robotNumber, matchType: matchType);
    currentPage = PageType.auto;
    notifyListeners();
  }
  
  void setScoreData(String key, int value){
    matchData!.scoring[key] = value;
    notifyListeners();
  }
  
  void addValueToScoreData(String key, int value){
    matchData!.scoring[key] = 
      matchData!.scoring.containsKey(key) ? value + matchData!.scoring[key]! : value;
    notifyListeners();
  }
  
  int getScoreData(String key){
    if(!matchData!.scoring.containsKey(key)) matchData!.scoring[key] = 0;
    return matchData!.scoring[key]!;
  }
}

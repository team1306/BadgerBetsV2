import 'package:bbotsscoutingapp2025/matchdata.dart';
import 'package:bbotsscoutingapp2025/views/scout/scout.dart';
import 'package:flutter/material.dart';

class ScoutManager extends ChangeNotifier {
  PageType currentPage = PageType.auto;

  late MatchData matchData;

  ScoutManager(int matchNumber, int robotNumber, MatchType matchType) {
    //TODO implement user data getting from storage
    String username = "";
    matchData = MatchData(username: username, matchNumber: matchNumber, robotNumber: robotNumber, matchType: matchType);
  }

  PageType getCurrentPage() {
    return currentPage;
  }
  
  void setScoreData(String key, int value){
    matchData.scoring[key] = value;
    notifyListeners();
  }
  
  void addValueToScoreData(String key, int value){
    matchData.scoring[key] =
      matchData.scoring.containsKey(key) ? value + matchData.scoring[key]! : value;
    notifyListeners();
  }
  
  int getScoreData(String key){
    if(!matchData.scoring.containsKey(key)) matchData.scoring[key] = 0;
    return matchData.scoring[key]!;
  }
}

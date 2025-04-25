import 'package:bbotsscoutingapp2025/matchdata.dart';
import 'package:bbotsscoutingapp2025/views/scout/scout.dart';
import 'package:flutter/material.dart';

class ScoutManager extends ChangeNotifier {
  
  MatchData? matchData;

  ScoutManager(){
    startScout();
  }
  
  void startScout() {
    //TODO implement user data getting
    matchData = MatchData(username: "");
    notifyListeners();
  }
  
  void setScoreData(String key, int value){
    matchData!.scoring[key] = value;
    print(value);
    notifyListeners();
  }
  
  void addValueToScoreData(String key, int value){
    if(matchData!.scoring.containsKey(key)) {
      matchData!.scoring[key] = value + matchData!.scoring[key]!;
    }
    notifyListeners();
  }
  
  int getScoreData(String key){
    if(!matchData!.scoring.containsKey(key)) matchData!.scoring[key] = 0;
    return matchData!.scoring[key]!;
  }
}

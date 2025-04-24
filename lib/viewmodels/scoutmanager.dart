import 'package:bbotsscoutingapp2025/matchdata.dart';
import 'package:bbotsscoutingapp2025/views/scout.dart';
import 'package:flutter/material.dart';

class ScoutManager extends ChangeNotifier {
  ScoutState scoutView;

  ScoutPages currentPage = ScoutPages.prematch;
  MatchData? matchData;


  ScoutManager({required this.scoutView});


  void startScout() {
    currentPage = ScoutPages.auto;
    matchData = MatchData(username: "", matchNumber: 0, robotNumber: 0, matchType: scoutView.matchType);
  }

  ScoutPages getCurrentPage() {
    return currentPage;
  }
}

enum ScoutPages {
  prematch,
  auto,
  teleop,
  postmatch 
}
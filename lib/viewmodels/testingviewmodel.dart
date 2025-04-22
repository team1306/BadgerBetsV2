import 'dart:nativewrappers/_internal/vm_shared/lib/collection_patch.dart';

import 'package:bbotsscoutingapp2025/matchdata.dart';
import 'package:flutter/material.dart';

class TestingViewModel extends ChangeNotifier {
  MatchData? matchData;

  void startScout(String username, int matchNumber, int robotNumber, MatchType matchType) {
    matchData = MatchData(username: username, matchNumber: matchNumber, robotNumber: robotNumber, matchType: matchType);
  }
}
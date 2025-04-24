import 'dart:collection';

class MatchData {
  String username;
  int matchNumber = -1, robotNumber = -1;
  MatchType matchType = MatchType.practice;
  
  Map<String, int> scoring = HashMap<String, int>();
  String notes = "";

  MatchData({required this.username}); 
}

enum MatchType {
  practice,
  qualification,
  playoff
}

class ClimbState {
  final park = 0;
  final shallowSuccess = 1;
  final deepSuccess = 2;
  final shallowFail = 3;
  final deepFail = 4;
}
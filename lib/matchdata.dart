import 'dart:collection';

class MatchData {
  String username;
  int matchNumber, robotNumber;
  MatchType matchType;
  
  Map<String, int> scoring = HashMap<String, int>();
  String notes = "";

  MatchData({required this.username, required this.matchNumber, required this.robotNumber, required this.matchType}); 
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
class MatchData {
  final String username;
  final int matchNumber, robotNumber;
  final MatchType matchType;
  
  final Map<String, int> scoring;
  final String notes;

  MatchData({required this.username, required this.matchNumber, required this.robotNumber, required this.matchType, required this.scoring, required this.notes}); 
}

enum MatchType{
  practice,
  qualifier,
  playoff
}
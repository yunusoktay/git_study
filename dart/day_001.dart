late String description;

void main() {
  var studentName = 'Yunus';
  final int studyMinutes = 90;
  const double targetHoursPerDay = 1.5;

  int completedTopics = 1;
  double progressScore = 0.1;
  bool isReadyForFlutter = false;

  print('Hello, World!');
  print('studentName: $studentName');
  print('studyMinutes: $studyMinutes');
  print('targetHoursPerDay: $targetHoursPerDay');
  print('completedTopics: $completedTopics');
  print('progressScore: $progressScore');
  print('isReadyForFlutter: $isReadyForFlutter');

  completedTopics += 1;
  progressScore = 0.2;
  isReadyForFlutter = true;

  print('updated completedTopics: $completedTopics');
  print('updated progressScore: $progressScore');
  print('updated isReadyForFlutter: $isReadyForFlutter');

  description = 'Feijoada!';
  print(description);


}



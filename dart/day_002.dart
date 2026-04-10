void main() {
  int score = 78;
  String weather = 'sunny';
  int countdown = 3;
  int step = 1;
  String dayType = 'study';

  if (score >= 85) {
    print('Great job');
  } else if (score >= 60) {
    print('Good progress');
  } else {
    print('Keep practicing');
  }

  print('For loop:');
  for (int i = 1; i <= 3; i++) {
    print('Round $i');
  }

  print('While loop:');
  while (countdown > 0) {
    print('Countdown: $countdown');
    countdown--;
  }

  print('Do-while loop:');
  do {
    print('Step: $step');
    step++;
  } while (step <= 3);

  switch (weather) {
    case 'sunny':
      print('Go outside');
      break;
    case 'rainy':
      print('Take an umbrella');
      break;
    case 'snowy':
      print('Wear warm clothes');
      break;
    default:
      print('Check the weather again');
  }

  switch (dayType) {
    case 'study':
      print('Today is for learning Dart');
      break;
    case 'rest':
      print('Today is for resting');
      break;
    default:
      print('Make a simple plan');
  }
}

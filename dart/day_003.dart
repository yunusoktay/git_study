late String learningGoal;

void main() {
  String? name;
  String? city = 'Istanbul';
  String? favoriteLanguage;

  print('Name length: ${name?.length}');
  print('City length: ${city?.length}');

  String displayName = name ?? 'Guest';
  String language = favoriteLanguage ?? 'Dart';

  print('Display name: $displayName');
  print('Favorite language: $language');

  name = 'Yunus';

  if (name != null) {
    print('Uppercase name: ${name!.toUpperCase()}');
  }

  learningGoal = 'Learn Dart null safety';
  print('Goal: $learningGoal');
}

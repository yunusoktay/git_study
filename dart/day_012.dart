// Day 12: Asynchronous Programming - Working with Futures
//
// Usage:
//   dart run dart/day_012.dart

import 'dart:async';

void main() {
  print('Day 12: Working with Futures');
  print('');

  runSuccessDemo();
  runErrorDemo();
  runChainDemo();
}

Future<String> fetchUser(bool shouldSucceed) {
  return Future.delayed(
    const Duration(milliseconds: 500),
    () {
      if (shouldSucceed) {
        return 'User: Yunus';
      }
      throw Exception('Failed to fetch user.');
    },
  );
}

void runSuccessDemo() {
  print('1. Success Case');

  fetchUser(true)
      .then((user) => print('then: $user'))
      .catchError((error) => print('catchError: $error'))
      .whenComplete(() => print('whenComplete: done'));
}

void runErrorDemo() {
  print('2. Error Case');

  fetchUser(false)
      .then((user) => print('then: $user'))
      .catchError((error) => print('catchError: $error'))
      .whenComplete(() => print('whenComplete: done'));
}

void runChainDemo() {
  print('3. Chain Multiple then()');

  fetchUser(true)
      .then((user) => 'Welcome, $user')
      .then((greeting) => print('chained: $greeting'))
      .whenComplete(() => print('whenComplete: chain finished'));
}

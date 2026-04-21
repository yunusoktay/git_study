// Day 11: Asynchronous Programming - Introduction
//
// Usage:
//   dart run dart/day_011.dart

void main() {
  print('Day 11: Sync vs Async');
  print('');

  runSyncDemo();
  print('');
  runAsyncDemo();
  print('');

  print('main() finished. (But the async work is still pending...)');
}

void runSyncDemo() {
  print('1. Synchronous');
  print('Step A');
  print('Step B');
  print('Step C');
  print('All steps finished in order.');
}

void runAsyncDemo() {
  print('2. Asynchronous');

  print('Before Future');

  Future<String> fetchData() {
    return Future.delayed(
      const Duration(seconds: 1),
      () => 'Data received!',
    );
  }

  fetchData().then((result) {
    print('Future completed: $result');
  });

  print('After Future (runs before the result!)');
}

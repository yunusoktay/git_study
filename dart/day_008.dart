// Day 8: Dart Advanced & OOP - Abstract Classes and Interfaces
//
// Usage:
//   dart run dart/day_008.dart

void main() {
  print('Day 8: Abstract Classes and Interfaces');
  print('');

  final Shape circle = Circle(radius: 5);
  final Shape rectangle = Rectangle(width: 4, height: 6);

  print('1. Abstract Class in Action');
  circle.describe();
  rectangle.describe();
  print('');

  print('2. Polymorphism Through the Abstract Type');
  final List<Shape> shapes = [circle, rectangle];
  for (final shape in shapes) {
    print('Area: ${shape.area()}');
  }
  print('');

  print('3. Interface Implementation');
  final logger = ConsoleLogger();
  logger.log('Hello from interface!');
}

abstract class Shape {
  double area();

  void describe() {
    print('This shape has an area of ${area()}.');
  }
}

class Circle extends Shape {
  final double radius;

  Circle({required this.radius});

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle({required this.width, required this.height});

  @override
  double area() => width * height;
}

abstract class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('[LOG] $message');
  }
}

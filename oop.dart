import 'dart:io';

class GeometricShape {
  double area() {
    // TODO: implement area
    throw UnimplementedError();
  }
}

// Interface for a shape
double area() {
    // TODO: implement area
    throw UnimplementedError();
  }
}

// Base class for geometric shapes
class Rectangle extends GeometricShape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

// Circle class inheriting from GeometricShape
class Circle extends GeometricShape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

// Class for reading data from a file
class FileReader {
  List<String> readLinesFromFile(String filePath) {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    return lines;
  }
}

void main() {
  // Instantiate a rectangle and a circle
  Rectangle rectangle = Rectangle(5, 3);
  Circle circle = Circle(4);

  // Print areas of shapes
  print('Area of rectangle: ${rectangle.area()}');
  print('Area of circle: ${circle.area()}');

  // Read data from a file
  FileReader fileReader = FileReader();
  List<String> lines = fileReader.readLinesFromFile('data.txt');

  // Print data from the file
  print('Data from file:');
  for (String line in lines) {
    print(line);
  }
}
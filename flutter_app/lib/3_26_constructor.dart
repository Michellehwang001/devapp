void main() {
  Person person1 = const Person('Hwang', 20);
  Person person2 = const Person('Hwang', 20);
  Person person3 = new Person('Hwang', 20);
  Person person4 = new Person('Hwang', 20);

  print(identical(person1, person2));
  print(identical(person2, person3));
  print(identical(person3, person4));
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);
}

class Point {
  double x = 0;
  double y = 0;

  Point(this.x, this.y);

  // Named constructor
  Point.origin()
      : x = 10,
        y = 10;

}
import 'dart:io';

void main() {
  List<String> inputLine = stdin.readLineSync().split(' ');
  Exam exam = Exam(inputLine[0], inputLine[1], inputLine[2], inputLine[3]);
  print(exam.solution());
}

class Exam {
  String a;
  String b;
  String c;
  String d;


  Exam(this.a, this.b, this.c, this.d);

  int solution() {
    int result = 0;

    String forth = desc(a, b);
    String back = desc(c, d);

    result = int.parse(forth)+ int.parse(back);

    return result;
  }

  // 두 수를 넣으면 최대값을 만들어 준다.
  String desc(String a, String b) {
    String result = a + b;

    if (int.parse(a) < int.parse(b)) {
      result = b + a;
    }

    return result;
  }
}

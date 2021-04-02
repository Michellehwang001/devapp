// 부족한 카드 한장을 출력하라.
import 'dart:io';

void main() {
  List<int> inputLine = [];

  for (int i = 0; i < 4; i++) {
    int input = int.parse(stdin.readLineSync());
    inputLine.add(input);
  }

  Exam exam = Exam(inputLine);
  print(exam.solution());
}

class Exam {
  List<int> c;

  // 생성자
  Exam(this.c);

  int solution() {
    int result = 15;

    for(int _c in c) {
      result -= _c;
    }

    return result;
  }
}

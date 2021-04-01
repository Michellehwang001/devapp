// 문자열 s가 주어졌을 때 s에 포함된 알파벳 'A'의 갯수를 구하시오
import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  Exam exam = Exam(s);
  print(exam.solution());
}

class Exam {
  String s;
  Exam(this.s);

  int solution() {
    int result = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i].toUpperCase() == 'A') {
        result++;
      }
    }

    return result;
  }
}

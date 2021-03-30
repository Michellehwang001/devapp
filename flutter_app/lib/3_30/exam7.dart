// 두 정수를 입력받아 비교하여 더 큰 수를 출력하는 프로그램
// 두 수가 같은 경우 eq를 출력

import 'dart:math';

void main() {
  Exam exam = Exam();
  print(exam.solution1(20, 30));
  print(exam.solution2(20, 10));
  print(exam.solution2(20, 20));
}

class Exam {
  String solution1(int a, int b) {
    String result = 'eq';

    if(a > b) {
      result = a.toString();
    }
    else if(a < b) {
      result = b.toString();
    }

    return result;
  }

  String solution2(int a, int b) {
    String result = 'eq';

    if(a != b) {
      result = max(a, b).toString();
    }

    return result;
  }
}

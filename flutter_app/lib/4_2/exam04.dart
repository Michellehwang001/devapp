// 숫자 판별
// 입력된 숫자의 각 자리수가 모두 같은 숫자면 그대로 출력,
// 아니라면 "No" 출력

import 'dart:io';

void main() {
  String inputLine = stdin.readLineSync();
  Exam exam = Exam(inputLine);
  print(exam.solution());
}

class Exam {
  String n;

  Exam(this.n);

  String solution() {
    String result = n;

    // 앞의 글자와 뒤의 글자를 비교한다.
    for (int i = 0; i < n.length - 1; i++) {
      if (n[i] != n[i + 1]) {
        result = 'No';
      }
    }

    return result;
  }
}

// 빼빼로 파티 11개의 빼빼로가 있으면 "OK", 파티를 열수 없다면 필요한 빼빼로의 개수를 출력
import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  Exam exam = Exam(s);
  print(exam.solution());
}

class Exam {
  String s;

  Exam(this.s);

  String solution() {
    String result = 'OK';

    // 빼빼로의 필요 갯수 구하기
    if (s.length < 11) {
      result = (11 - s.length).toString();
    }

    return result;
  }
}

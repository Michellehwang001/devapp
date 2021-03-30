// 정수 N을 입력받아 * 을 N개만큼 출력하시오
import 'dart:io';

void main() {
  // print('숫자를 입력하세요!');
  // String N = stdin.readLineSync();
  Exam exam = Exam();
  print(exam.solution(3));
  print(exam.solution(10));
}

class Exam {
  String solution(int input) {
    String result = '';
    for(int i = 0; i < input ; i++) {
      result = result + '*';
    }
    return result;
  }
}

import 'dart:io';

void main() {
  List<String> inputLine = stdin.readLineSync().split(' ');
  int N = int.parse(inputLine[0]);
  int M = int.parse(inputLine[1]);

  Exam exam = Exam();
  print(exam.solution(N, M));
}

class Exam {
  String solution(int m, int n) {
    String result = m.toString();
    int temp = m;

    for (int i = 0; i < 9; i++) {
      // 등차수열 계산
      temp += n;

      // result값을 만들어 준다
      result += ' $temp';
    }

    return result;
  }
}

// 태풍의 간격
import 'dart:io';

void main() {
  List<int> inputs = [];

  // 5개의 입력값
  for (int i = 0; i < 5; i++) {
    int num = int.parse(stdin.readLineSync());
    inputs.add(num);
  }

  Exam exam = Exam(inputs);
  List<int> results = exam.solution();
  for (int result in results) {
    print(result);
  }
}

class Exam {
  List<int> inputs;

  Exam(this.inputs);

  List<int> solution() {
    List<int> result = [];
    // 입력값 - 1만큼 돌면서 날짜를 계산한다.
    for (int i = 0; i < inputs.length - 1; i++) {
      result.add(inputs[i + 1] - inputs[i]);
    }

    return result;
  }
}

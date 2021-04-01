// 태풍이 상륙한 5개의 날짜가 주어졌을 때 몇일 간격으로 태풍이 왔는지 출력하시오
// 1
// 5
// 15
// 27
// 28
import 'dart:io';

void main() {
  List<String> inputLine = [];

  for (int i = 0; i < 5; i++) {
    String input = stdin.readLineSync();
    inputLine.add(input);
  }

  Exam exam = Exam(inputLine);
  List<int> answers = exam.solution();
  for (int anser in answers) {
    print(anser);
  }
}

class Exam {
  List<String> inputLine;
  Exam(this.inputLine);

  List<int> solution () {
    List<int> result = [];

    for(int i = 0; i < 4 ; i++) {
      int temp = int.parse(inputLine[i + 1]) - int.parse(inputLine[i]);
      result.add(temp);
    }

    return result;
  }

}
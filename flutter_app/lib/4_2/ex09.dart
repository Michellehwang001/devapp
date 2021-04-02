// 흑 또는 백
import 'dart:io';

void main() {
  List<List<String>> inputLines = [];

  List<String> inputLine = stdin.readLineSync().split(' ');

  // H값 행만큼 readLineSync() 해준다.
  for (int i = 0; i < int.parse(inputLine[0]); i++) {
    List<String> inputLine = stdin.readLineSync().split(' ');
    inputLines.add(inputLine);
  }

  Exam exam = Exam(inputLines);
  exam.solution();
}

class Exam {
  List<List<String>> inputLines;

  Exam(this.inputLines);

  void solution() {
    List<List<String>> outputLines = [];

    for (int i = 0; i < inputLines.length; i++) {
      List<String> temp = makeResultLine(inputLines[i]);
      outputLines.add(temp);

      print(temp);
    }
  }

  List<String> makeResultLine(List<String> row) {
    List<String> result = [];

    for (String str in row) {
      int temp = int.parse(str);

      if (temp < 128) {
        result.add('0');
      } else {
        result.add('1');
      }
    }

    return result;
  }
}

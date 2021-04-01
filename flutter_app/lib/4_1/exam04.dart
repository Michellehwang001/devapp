// 이름을 영어로 입력하면 성과 이름의 각 첫 문자를 . 으로 연결해서 출력하시오
import 'dart:io';

void main() {
  // String input = stdin.readLineSync();
  List<String> inputLine = stdin.readLineSync().split(' ');
  Exam exam = Exam(inputLine);
  print (exam.shorten());

}

class Exam {
  List<String> inputLine;

  Exam(this.inputLine);

  String shorten() {
    String result = '';

    for (int i = 0; i < inputLine.length; i++) {
      result += inputLine[i][0];
      if (i < inputLine.length - 1){
        result += '.';
      }
    }

    return result;
  }
}
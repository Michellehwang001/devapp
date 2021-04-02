// 고대 문자
import 'dart:io';

void main() {
  List<String> inputLine = stdin.readLineSync().split('+');

  Exam exam = Exam(inputLine);
  print(exam.solution());
}

class Exam {
  List<String> inputs;

  Exam(this.inputs);

  int solution(){
    int result = 0;

    for(String input in inputs) {
      result += makeNum(input);
    }

    return result;
  }

  // 표현식을 숫자로 변환
  int makeNum(String exp){
    int result = 0;

    for(int i = 0; i < exp.length; i++) {
      if(exp[i] == '/') {
        result += 1;
      }
      else if(exp[i] == '<') {
        result += 10;
      }
    }

    return result;
  }
}

import 'dart:io';

void main() {
  //List<int> inputLine = stdin.readLineSync().split(' ').map((e) => int.parse(e));
  List<String> inputLine = stdin.readLineSync().split(' ');
  int N = int.parse(inputLine[0]);
  int M = int.parse(inputLine[1]);

  Exam exam = Exam(N, M);
  print(exam.solution());
}

class Exam {
  int N, M;

  Exam(this.N, this.M);

  String solution() {
    String result = 'No';

    if ((N % 2 == 0 && M % 2 == 1) || (N % 2 == 1 && M % 2 == 0)) {
      result = 'Yes';
    }

    return result;
  }
}

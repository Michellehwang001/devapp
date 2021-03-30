// Alice
// Bob
// Carol
// Dave
// Ellen
// Hello Alice, Bob, Carol, Dave, Ellen.
void main() {
  List<String> inputs = ['Alice', 'Bob', 'Carol', 'Dave', 'Ellen'];
  Exam exam = Exam();
  print(exam.solution(inputs));
}

class Exam {
  String solution(List<String> lists) {
    String result = 'Hello ';

    for (int i = 0; i < lists.length; i++) {
      // 마지막
      if (i != lists.length - 1) {
        result += lists[i] + ', ';
      } else {
        result += lists[i] + '.';
      }
    }

    return result;
  }
}

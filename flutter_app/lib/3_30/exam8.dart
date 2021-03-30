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
      // 마지막보다 작다면 i 가 넘어가더라도 안전하다. !을 쓰는 것보다.
      if (i < lists.length - 1) {
        result += lists[i] + ', ';
      }
      // 마지막
      else {
        result += lists[i] + '.';
      }
    }

    return result;
  }
}

// "위치 (x, y)가 공사 현장에서 R 미터 이상 떨어져있다"는 조건은 다음 식으로 표현할 수 있습니다.
// (x - a)2 + (y - b)2 >= 2

void main() {
  List<int> line1 = [20, 10, 10];
  List<int> line2 = [3];
  List<int> line3 = [25, 10];
  List<int> line4 = [20, 15];
  List<int> line5 = [70, 70];
  List<dynamic> inputs = [line1, line2, line3, line4, line5];

  Exam exam = Exam();
  exam.solution(inputs);

}

class Exam {
  String solution(List<int> inputs) {
    String result;

    for (var input in inputs) {
      // for (var line in input) {
      //   print(line);
      // }
    }

    return result;
  }
}

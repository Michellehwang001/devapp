// 정수 m과 n이 주어졌을 때
// m을 n으로 나눈 몫과 나머지를 출력하라
void main() {
  Exam exam = Exam();
  List<int> result = exam.solution(5, 2);
  print('몫 : ${result[0]}, 나머지 : ${result[1]}');
}

class Exam {
  List<int> solution(int m, int n) {
    List<int> result = [];

    result.add(m ~/ n); // 몫
    result.add(m % 2); // 나머지

    return result;
  }
}

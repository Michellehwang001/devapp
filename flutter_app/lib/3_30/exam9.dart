// 첫번째 숫자 m, 공차 n 이 주어졌을 때 10번째 숫자까지를 공백을 구분자로 출력하시오
// 3 3
// 3 6 9 12 15 18 21 24 27 30
//
// 5 10
// 5 15 25 35 45 55 65 75 85 95
//
// 1 3
// 1 4 7 10 13 16 19 22 25 28
void main() {
  Exam exam = Exam();
  print(exam.solution(3, 3));
  print(exam.solution(5, 10));
  print(exam.solution(1, 3));
}

class Exam{
  String solution(int m, int n) {
    String result = m.toString();
    int temp = m;

    for (int i=0; i < 9; i++) {
      // 등차수열 계산
      temp += n;

      // result값을 만들어 준다
      result += ' $temp';
    }

    return result;
  }
}
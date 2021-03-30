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
    String result = '';
    int temp = 0;

    for (int i=0; i < 10; i++) {
      // 첫번째값
      if(i == 0) {
        temp = m;
      }
      else {
        temp += n;
      }
      result += '$temp ';
    }

    return result;
  }
}
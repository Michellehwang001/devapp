// 두 정수를 입력받아 비교하여 더 큰 수를 출력하는 프로그램
// 두 수가 같은 경우 eq를 출력

void main() {
  Exam exam = Exam();
  int answer = exam.solution(20, 20);
  if (answer == 0) {
    print('eq');
  } else {
    print(answer);
  }
}

class Exam {
  int solution(int a, int b) {
    int result = 0;

    if (a > b) {
      result = a;
    } else if (a < b) {
      result = b;
    }

    return result;
  }
}

//-100 부터 100까지 중 정수 n이 주어졌을 때 절대값을 구하시오

void main() {
  Exam exam = Exam();
  print(exam.solution(-100));
  print(exam.solution2(10));
}

class Exam {
  int solution(int n) {
    int result = n;

    return result.abs();
  }

  int solution2(int n) {
    int result = n;

    if (n < 0) {
      result = n * -1;
    }

    return result;
  }
}

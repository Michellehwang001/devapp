// 삼각형 내각의 합은 180도이다.
// 두개의 각을 a, b라고 했을 때 나머지 한 각을 구하시오
void main() {
  Exam exam = Exam();
  print(exam.solution(100, 10));
  print(exam.solution(50, 80));
}

class Exam {
  int solution(int a, int b) {
    int result = 0;

    if (a + b < 180) result = 180 - a - b;

    return result;
  }
}

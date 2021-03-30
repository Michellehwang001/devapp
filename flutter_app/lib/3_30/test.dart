void main() {
  Exam exam = Exam();
  print(exam.solution(5,1));
}
class Exam {
  int solution(int m,int n) {
    int a = m;
    int b = m + 3;
    int result = 0;
    for (int i = 0; i <= 10; i++) {
      result = b - a;
    }
    return result;
  }
}
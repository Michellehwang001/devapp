// 주사위의 한쪽면과 반대쪽 숫자의 합은 반드시 7이 된다. (1, 6) (2, 5) (3, 4)
// 한쪽면이 n일 경우 반대쪽 숫자는?
void main() {
  Exam exam = Exam();
  print(exam.solution(3));
  print(exam.solution(1));
}

class Exam {
  int solution(int n) {
    int result = 0;

    result = 7 - n;

    return result;
  }
}

// 당신은 수를 열거하는 프로그램을 만들려고 한다. 그러려면 '자르기 좋은 숫자'를 발견해야 한다.
// '자르기 좋은 숫자'란 다음 규칙을 따른다.
//
// - 모든 숫자가 같아야 함
//
// 판별한 숫자 n 을 입력받아 조건에 맞으면 그 수를 그대로 출력하고
// 조건에 맞지 않으면 No를 출력하시오
void main() {
  Exam exam = Exam();
  print(exam.solution(444444));
  print(exam.solution(33334));
  print(exam.solution(333333));
  print(exam.solution(49000));
}

class Exam {
  String solution(int n) {
    String result = n.toString(); // 4444

    // 4434 일 경우 44 비교, 43비교, 34비교 3번한다.
    for (int i = 0; i < result.length - 1; i++) {
      if(result[i] != result[i+1]) {
        result = 'No';
      }
    }

    return result;
  }
}

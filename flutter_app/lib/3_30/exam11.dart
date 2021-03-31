//다음과 같이 A~Z 까지 알파벳 대문자 중에서 한 문자 s를 입력받습니다.
//ABCDEFGHIJKLMNOPQRSTUVWXYZ
//
//A를 1번째로 하면 C는 3번째입니다.
//입력받은 문자가 몇 번째 문자인지 출력하시오

void main() {
  Exam exam = Exam();
  print(exam.solution('C'));
  print(exam.solution('Z'));
}

class Exam {
  static final String aToZ = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  int solution(String s) {
    int result = aToZ.indexOf(s) + 1;

    // for (int i = 0; i < aToZ.length; i++) {
    //   if (aToZ[i] == s) {
    //     result = i + 1;
    //     break;
    //   }
    // }
    return result;
  }
}

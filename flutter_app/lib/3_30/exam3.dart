// A의 갯수는
// PAiAR - 2개
void main() {
  Exam exam = Exam();
  print(exam.solution('PiZZAAA'));
}

class Exam {
  int solution(String s) {
    int result = 0;

    for(int i=0; i < s.length; i++) {
      if(s[i] == 'A') {
        result++;
      }
    }

    return result;
  }
}
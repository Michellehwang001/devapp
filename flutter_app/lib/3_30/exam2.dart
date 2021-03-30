// 111 - ABA
// 575 - AAAAABBBBBBBAAAAA

void main() {
 Exam exam = Exam();
 print(exam.solution(3, 5, 3));
 print(exam.solution(6, 10, 8));
}

class Exam {
  String solution(int L, int M, int N) {
    String result = '';
    for(int i=0 ; i < L; i++){
      result += 'A';
    }
    for(int i=0 ; i < M; i++){
      result += 'B';
    }
    for(int i=0 ; i < N; i++){
      result += 'A';
    }

    return result;
  }
}
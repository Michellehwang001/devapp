// 과목 점수 합계, 평균
// List() 예제

void main() {
  List<int> scores = [100, 50, 70, 30];
  Map<String, int> scoresV2 = {
    'korean': 100,
    'english': 50,
    'math': 70,
    'economy': 30
  };

  print('--------------  Using List --------------');
  // 합계구하기
  print('합 계: ${total(scores)}');
  // 평균구하기
  print('평 균: ${avg(scores)}');

  print('--------------  Using Map --------------');
  print('합 계: ${totalV2(scoresV2)}');
  print('평 균: ${avgV2(scoresV2)}');

  listExam();
}

int total(List<int> scores) {
  int sum = 0;
  //for-in문 사용
  for (var score in scores) {
    sum += score;
  }

  return sum;
}

int totalV2(Map<String, int> scores) {
  int sum = 0;
  scores.forEach((key, value) {
    sum += value;
  });
  return sum;
}

double avg(List<int> scores) => total(scores) / scores.length;

double avgV2(Map<String, int> scores) => totalV2(scores) / scores.length;

void listExam() {
  List<int> scores = [100, 20, 30];

  // 리스트 추가
  scores.add(90);

  // 리스트에서 삭제
  scores.remove(30);

  // 3번째 인덱스 삭제
  scores.removeAt(2);

  // 맨 앞의것 삭제
  scores.removeAt(0);

  // 맨 앞에 추가
  scores.insert(0, 89);

  // 뒤에다 리스트 추가
  scores.addAll([10, 20, 30]);

  for (var score in scores) {
    print(score);
  }
}

import 'dart:math';

void main() {
  print('주사위7 : ${dice2(100)}');
  print('주사위7 : ${dice(start: 5, end: 7)}');
  print('주사위7 : ${dice(start: 1)}');
}

// 이름있는 매개변수 파라미터에 { } 를!!!
// 메개변수를 { } 로 감싸면 선택적으로 매개변수를 선택할 수 있게 된다. (선택적 파라미터)
int dice({int start, int end}) {
  if (start == null && end != null) {
    start = 1;
  }else if (start != null && end == null){
    end = 6;
  }

  return Random().nextInt(end - start + 1) + start;
}

// 람다식 : 함수의 내용이 한줄일 경우 다음과 같이 줄여 쓸 수 있다.
int dice2(int num) => Random().nextInt(num) + 1;

int dice3(int num) {
  return Random().nextInt(num) + 1;
}

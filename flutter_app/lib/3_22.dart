import 'dart:math';

void main() {
  int a = 10;
  int b = 20;
  var c = 30;

  // dart형은 이렇게
  int myAge = 10;
  int brother = 20;

  // snake case (뱀형)
  // int my_age = 20;

  double tDouble = 2.3;

  // 문자열
  String name = 'Michelle Hwang';

  // [진위 (참, 거짓)]
  bool isMarried = true;
  isMarried = false;

  // 숫자 목록
  List<int> ageList = [10, 20, 30];
  var ageList2 = [10, 20, 30];

  // 문자열 목록
  List<String> nameList = ['홍길동', '한석봉'];
  var nameList2 = ['홍길동', '한석봉'];

  int g;
  if (g == null) {
    print('g는 $g');
  }

  final double tax = 1.1;
  int fax = 5;
  print('5만원짜리를 4만원으로 할인합니다.');
  fax = 4;
  print('팩스의 새로운 가격은(세금포함) ${fax * tax}만원');

  forTest();

  var result = fibonacci(20);

  print(result);

  dice();
}

void forTest() {
  List<String> names = ['한석봉', '한석봉', '한석봉1'];

  for (var name in names) {
    print('내 이름은 $name 입니다.');
  }

  // names List 에서 1이 포함된 것들 모두 프린트.. 오~~ 신기~
  names.where((name) => name.contains('1')).forEach(print);

}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}


// 주사위
void dice(){
  var rng = new Random();
  print(rng.nextInt(6) + 1); //1~6
}

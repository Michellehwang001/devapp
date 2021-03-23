void main() {
  int weight = 60;
  int age = 9;
  int age1 = 40;
  int age2 = 30;
  String name = '스마트';

  if (weight == 60) {
    print('weight 는 60입니다.');
  }
  if ((age1 + age2) * 2 > 60) {
    print('age1과 age2의 합를 2배 한 것이 60이 넘는다.');
  }
  if (age % 2 == 1) { // age.isOdd // 짝수 판별
    print('age 는 홀수이다. ');
  }
  if (name == '스마트') {
    print('name 는  스마트입니다.');
  }
}

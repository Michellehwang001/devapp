// 3월 22일 연습문제 1-1
// 1. 소스 코드 안에 3을 변수 a에, 5를 변수 b에 대입한다.
// 2. 그 곱셈의 결과를 변수 result 에 대입합니다.
// 3. 변수 c를 다음과 같이 화면에 출력합니다.
//
// 출력 예)
// 가로 3, 세로 5의 직사각형의 면적은 15

void main() {
  int a = 3;
  int b = 5;
  int result = a * b;
  String c = '가로 $a, 세로 $b의 직사각형의 면적은 $result입니다.';

  print (c);
}
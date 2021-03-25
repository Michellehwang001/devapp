import 'dart:io';
void main() {
  exam();
}
void exam() {
  List<int> numbers = [3, 4, 9];
  print('숫자1개를 입력해주세요');
  String num = stdin.readLineSync();
  int input = int.parse(num);
  for (int i = 0; i < numbers.length; i++) {
    if (input == numbers[i]) {
      print('정답 !');
    } else if (input != numbers[i]) {
      print('실패 !');
      break;
    }
  }
}
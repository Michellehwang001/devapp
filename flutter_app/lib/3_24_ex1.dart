import 'dart:io';

void main(){
  List<int> numbers = [3, 4, 5, 10];
  print('1자의 숫자를 입력해 주세요');

  String inputNum = stdin.readLineSync();

  for(var number in numbers) {
    if(number == int.parse(inputNum)) {
      print('정답!!!');
      break;
    }
  }
}
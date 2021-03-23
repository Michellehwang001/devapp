import 'dart:convert';
import 'dart:io';

import 'dart:math';

void main() {
  print('점을 보세요');
  print('이름을 입력해 주세요.');
  String name = stdin.readLineSync();

  print('나이를 입력해 주세요.');
  String ageString = stdin.readLineSync();
  int age = int.parse(ageString);

  print('점꾀가 나왔습니다!!');
  var fortune = printFortune();
  print('$age살의 $name, 당신의 운세 $fortune 입니다.');
}

String printFortune() {
  var rng = new Random();
  int fortune = rng.nextInt(3) + 1;

  if (fortune == 1)
    return '대박';
  else if (fortune == 2)
    return '중박';
  else if (fortune == 3)
    return '보통';
  else
    return '망';
}

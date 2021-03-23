import 'dart:math';

void main() {
  print('주사위6 : ${dice(6)}');
  print('주사위10 : ${dice(10)}');
  print('주사위7 : ${dice(7)}');
  print('주사위7 : ${dice(100)}');
}

int dice(int number) {
  Random random = Random();
  return random.nextInt(number) + 1;
}

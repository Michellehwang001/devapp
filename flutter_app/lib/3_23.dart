import 'dart:math';

void main() {
  print('주사위 : ${dice()}');
}

int dice() {
  Random random = Random();

  return random.nextInt(6) + 1;
}

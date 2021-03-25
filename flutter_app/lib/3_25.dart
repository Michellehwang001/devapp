import 'dart:math';

void main() {
  Cleric clericA = Cleric();
  clericA.name = 'A';

  print('---- clericA의 초기값 ----');
  clericA.tellInfo();

  // 공격당해서 hp -20;
  clericA.hp = clericA.hp - 20;
  print('---- cleric 공격당한 후 정보 ---');
  clericA.tellInfo();

  print('--- selfAid 후 hp 회복 ----');
  clericA.selfAid();
  clericA.tellInfo();

  print('--- 3초 기도 ---');
  int recoverMp = clericA.pray(3);
  clericA.tellInfo();
  print('실제회복한 량: $recoverMp');

  print('---- clericB 생성 ---');
  Cleric clericB = Cleric();
  clericB.selfAid();
  clericB.selfAid();
  clericB.tellInfo();
  clericB.selfAid();
  clericB.pray(5);
  clericB.tellInfo();
}

// Hero 타입을 새로 작성
class Hero {
  // field, 전역변수, global variable
  String name;
  int hp;

  void attack() {
    // 지역변수 local variable
    int hp = 100;
    print('공격!!!');
  }

  void run() {}

  void sit() {}
}

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  final int maxHp = 50;
  final int maxMp = 10;

  // MP 5소비로 자신의 HP를 최대 HP까지 회복할 수 있다.
  void selfAid() {
    if (mp < 5) {
      print('mp가 5미만이라 selfAid를 사용할 수 없습니다. ');
    } else {
      mp = mp - 5;
      hp = maxHp;
    }
  }

  // mp 회복, 회복량은 기도한 시간(초)에 랜던하게 0~2포인트의 보정을 한 양이다.
  // 단, 최대 MP보다 더 회복하는 것은 불가능하다.
  int pray(int second) {
    Random rnd = Random();

    // 회복할 MP량
    int recoverMp = rnd.nextInt(3) + second;

    // MP 회복시켜 주기. 단 max값은 10
    (mp + recoverMp > maxMp) ? mp = maxMp : mp = mp + recoverMp;

    // 실제로 회복한 량??
    return recoverMp;
  }

  void tellInfo() {
    print('현재 hp : $hp');
    print('현재 mp : $mp');
  }
}

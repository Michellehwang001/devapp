/*
제출 후 피드백
class 얀에 print문은 안쓰는 걸로.. return 값 받아 print하는게 훨 낫다.
tellInfo() 같은 경우 처음에 class 안에 있었는데 캐릭터가 자신의 정보를 말하는게 아니면
밖으로 빼는게 낫다.
둘다 수정 했음.
 */
import 'dart:math';

void main() {
  print(min(0, 5));

  print(max(0, 5));

  Cleric clericA = Cleric();
  clericA.name = 'A';

  print('---- clericA의 초기값 ----');
  tellInfo(clericA);

  // 공격당해서 hp -20;
  clericA.hp = clericA.hp - 20;
  print('---- cleric 공격당한 후 정보 ---');
  tellInfo(clericA);

  print('--- selfAid 후 hp 회복 ----');
  (clericA.selfAid())
      ? print('hp 회복 했습니다.')
      : print('mp가 5이하라 selfAid()가 실패했습니다.');
  tellInfo(clericA);

  print('--- 3초 기도 ---');
  int recoverMp = clericA.pray(3);
  tellInfo(clericA);
  print('실제회복한 량: $recoverMp');

  print('---- clericB 생성 ---');
  Cleric clericB = Cleric();
  clericB.selfAid();
}

void tellInfo(Cleric cleric) {
  print('현재 hp : ${cleric.hp}');
  print('현재 mp : ${cleric.mp}');
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
  final int maxHp = 50;
  final int maxMp = 10;
  String name;
  int hp = 50;
  int mp = 10;

  // MP 5소비로 자신의 HP를 최대 HP까지 회복할 수 있다.
  bool selfAid() {
    if (mp > 5) {
      mp = mp - 5;
      hp = maxHp;
      return true;
    }
    return false;
  }

  // mp 회복, 회복량은 기도한 시간(초)에 랜던하게 0~2포인트의 보정을 한 양이다.
  // 단, 최대 MP보다 더 회복하는 것은 불가능하다.
  int pray(int second) {
    Random rnd = Random();

    // 회복할 MP량
    int recoverMp = rnd.nextInt(3) + second;

    // MP 회복시켜 주기. 단 max값은 10
    //(mp + recoverMp > maxMp) ? mp = maxMp : mp += recoverMp;
    // min 함수 사용
    mp = min(mp + recoverMp, maxMp);

    // 회복한 량
    return recoverMp;
  }
}

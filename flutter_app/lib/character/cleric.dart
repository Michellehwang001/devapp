import 'dart:math';

class Cleric {
  static final int maxHp = 50;
  static final int maxMp = 10;
  String name;
  int hp = 50;
  int mp = 10;

  // 생성자
  Cleric(this.name, this.hp, this.mp);

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
    if (maxMp < recoverMp + mp) {
      recoverMp = maxMp - mp;
    }

    mp = min(mp + recoverMp, maxMp);

    // 회복한 량
    return recoverMp;
  }
}

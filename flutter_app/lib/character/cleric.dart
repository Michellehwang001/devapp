import 'dart:math';

class Cleric {
  // 접근지정자 _ 추가
  static final int maxHp = 50;
  static final int maxMp = 10;
  String _name;
  int _hp;
  int _mp;

  Cleric(this._name, this._hp, this._mp); // 생성자

  // MP 5소비로 자신의 HP를 최대 HP까지 회복할 수 있다.
  bool selfAid() {
    if (_mp > 5) {
      _mp = _mp - 5;
      _hp = maxHp;
      return true;
    }
    return false;
  }

  // _mp 회복, 회복량은 기도한 시간(초)에 랜던하게 0~2포인트의 보정을 한 양이다.
  // 단, 최대 _mp보다 더 회복하는 것은 불가능하다.
  int pray(int second) {
    Random rnd = Random();

    // 회복할 _mp량
    int recoverMp = rnd.nextInt(3) + second;

    // MP 회복시켜 주기. 단 max값은 10
    //(mp + recoverMp > maxMp) ? mp = maxMp : mp += recoverMp;
    // min 함수 사용

    // 회복량 계산하기
    if (maxMp < recoverMp + _mp) {
      recoverMp = maxMp - _mp;
    }

    _mp = min(_mp + recoverMp, maxMp);

    // 회복한 량
    return recoverMp;
  }
}

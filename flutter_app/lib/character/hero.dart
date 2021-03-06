// Hero 타입을 새로 작성
import 'package:flutter_app/equipment/sword.dart';

// 프로그램 전체적으로 공유!! 좋은 방법은 아님..
// Top Level 변수
// int money = 100;

class Hero {
  // 공용 자원
  static int money = 100;

  // private 변수로 만들면 맨처음 한번만 셋팅.
  String _name;
  int _hp;
  Sword sword;

  // 생성자 Constructor
  Hero(this._name, this._hp);

  // 외부에서 읽기 위해 제공하는 프로퍼티 - getter
  // int get hp {
  //   return _hp;
  // }
  int get hp => _hp; //람다식

  void attack() {
    // 지역변수 local variable
    _hp = _hp - 5;
    print('$_name이 공격!!!');

    // 칼이 있으면
    if (sword != null) {
      sword.attack();
    }
  }

  void run() {}

  void sit() {}
}

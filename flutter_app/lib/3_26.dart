import 'package:flutter_app/character/cleric.dart';
import 'package:flutter_app/character/hero.dart';
import 'package:flutter_app/equipment/sword.dart';

void main() {
  // 생성자를 통한 초기화
  // 더 이상 이름, hp설정을 할 수 없다.
  // 추가
  // 버그를 줄이기 위해서, 사람이 실수하는 것을 막기 위해 private 변수 사용
  Hero hero = Hero('Michelle', 50);
  Sword sword = Sword('불의검', 10, 1000, '착용자에게 불데미지 +10');

  // money 가 static변수
  Hero.money = 80;

  // 영웅에게 칼 주기
  hero.sword = sword;
  // Michell
  hero.attack();


  // 클래릭 생성
  Cleric cleric = Cleric('clericA', 50, 10);
  cleric.selfAid();
}

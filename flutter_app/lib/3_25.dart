/*
제출 후 피드백
class 얀에 print문은 안쓰는 걸로.. return 값 받아 print하는게 훨 낫다.
tellInfo() 같은 경우 처음에 class 안에 있었는데 캐릭터가 자신의 정보를 말하는게 아니면
밖으로 빼는게 낫다.
둘다 수정 했음.
 */
import 'package:flutter_app/character/cleric.dart';

void main() {
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
  tellInfo(clericB);
}

void tellInfo(Cleric cleric) {
  print('현재 hp : ${cleric.hp}');
  print('현재 mp : ${cleric.mp}');
}



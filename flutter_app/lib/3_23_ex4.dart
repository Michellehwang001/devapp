// if 문을 이용하여 다음 조건을 만족하는 프로그램을 작성하시오
//
// - 화면에 “[메뉴] 1:검색 2:등록 3:삭제 4:변경 >” 을 표시한다
// - 키보드로 숫자를 입력하고, 변수 selected 에 대입한다.
// - 만약 변수 selected 가 1 이면 “검색합니다", 2이면 “등록합니다", 3이면 “삭제합니다", 4이면 “변경합니다"를 표시한다
// - selected 가 1 부터 4 사이의 값이 아니라면 아무것도 하지 않는다

import 'dart:io';

void main(){
  print('[메뉴] 1:검색 2:등록 3:삭제 4:변경 >');

  String selected = stdin.readLineSync();

  if (selected == '1'){
    print('검색합니다.');
  }else if(selected == '2'){
    print('등록합니다.');
  }else if(selected == '3'){
    print('삭제합니다.');
  }else if(selected == '4'){
    print('변경합니다.');
  }else
    print('1~4의 값을 입력하세요!!!');
}
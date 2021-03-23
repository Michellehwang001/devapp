void main() {
  String address = 'jimin_ma@naver.com';
  String title = '메일보내기 테스트';
  String text = '안녕하세요. 메일을 보냅니다. \n\t 이메일 받으시면 회신 부탁드립니다.';

  email(title, address, text);
}

void email(String title, String address, String text) {
  print('$address에 아래의 메일을 송신한다.');
  print('제목 : $title');
  print('본문 : $text');
}

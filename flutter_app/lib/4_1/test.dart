void main() {

  // Check E-mail
  RegExp re1 = RegExp(r'[0-9a-zA-Z]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$');
  RegExp re2 = RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$');
  RegExp regEmail = RegExp(
      r'^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$');

  // Check Number
  RegExp re3 = RegExp(r'^[0-9]*$');

  // Check Password 특수문자/문자/숫자 포 형태 8~15자 이내
  RegExp regPassword =
      RegExp(r'^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$');

  // Check 핸드폰
  RegExp regPhone = RegExp(r'^\d{3}-\d{3,4}-\d{4}$');

  String email = 'aaa@naver.com';
  String num = '1123455';
  String password = 'abcd001!';
  String phone = '010-111-2222';

  print(regEmail.hasMatch(email));
  print(re3.hasMatch(num));
  print(regPassword.hasMatch(password));
  print(regPhone.hasMatch(phone));

  // RegExp re = RegExp(r'(\w+)');
  // String str1 = "one two three";
  // print('Has match: ${re.hasMatch(str1)}');
  //
  // // First match
  // Match firstMatch = re.firstMatch(str1);
  // print('First match: ${str1.substring(firstMatch.start, firstMatch.end)}');
  //
  // //  Iterate all matches
  // Iterable matches = re.allMatches(str1);
  // matches.forEach((match) {
  //   print(str1.substring(match.start, match.end));
  // });
}

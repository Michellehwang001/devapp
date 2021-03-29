void main() {
  List<int> numbers = [3, 5, 1, 9, 10, 19];

  // 리턴을 안한다. void 함수
  numbers.sort();
  print(numbers);

  // return
  // 반복되는 타입 => Iterable -> toList() 리스트 타입으로 변환
  print(numbers.reversed.toList());
  List<int> reversedNumbers = numbers.reversed.toList();
  print(reversedNumbers);

  // 문자열
  String str = 'abc';
  print(str == 'abc'); // true
  print(str.length);
  print(str.contains('a')); //true
  print(str.substring(1));  // bc
  print(str.substring(1, 3)); //end - start : 갯 , bc

  print(str + 'efg');
  print('${str}efg');

  print(str.isEmpty); // false
  print(str.isNotEmpty); // true
  print(str.toLowerCase()); // 소문자 변환
  print(str.toUpperCase()); // 대문자 편환

  print(str.replaceAll('a', 'A')); // 소문자 a를 대문자 A로

  print(str.startsWith('a')); //true a로 시작하는지

  print(str.endsWith('e')); //e로 끝나는지.

  print(str.indexOf('c')); // c의 index 리턴

  print('   hwang   '.trim()); // 좌우 공백 제거
  print('   hwang   '.trimRight()); // 왼쪽 공백 제거

  //String str2 = str.split('c');
}
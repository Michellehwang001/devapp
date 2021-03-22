void main() {
  int a = 10;
  int b = 20;
  var c = 30;

  // dart형은 이렇게
  int myAge = 10;
  int brother = 20;

  // snake case (뱀형)
  // int my_age = 20;

  double tDouble = 2.3;

  // 문자열
  String name = '황혜정';

  // [진위 (참, 거짓)]
  bool isMarried = true;
  isMarried = false;

  // 숫자 목록
  List<int> ageList = [10, 20, 30];
  var ageList2 = [10, 20, 30];

  // 문자열 목록
  List<String> nameList = ['홍길동', '한석봉'];
  var nameList2 = ['홍길동', '한석봉'];

  int g;
  if(g == null){
    print('g는 $g');
  }
}
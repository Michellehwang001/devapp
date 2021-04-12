void main() {
  // for (int i = 2 ; i<= 9; i++) {
  //   for (int j = 1; j <= 9; j++) {
  //     print('$i * $j = ${i * j}');
  //   }
  // }

  // 1 ~ 5 의 합의 구하자
  int result = 0;
  for (int i = 1; i <= 5; i++) {
    result += i;
  }
  print(result);


  print([1, 2, 3, 4, 5].reduce((value, element) => value + element));


}
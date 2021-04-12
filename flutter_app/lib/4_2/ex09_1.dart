import 'dart:io';

void main() {
  List<String> inputLine = stdin.readLineSync().split(' ');
  int H = int.parse(inputLine[0]);
  int W = int.parse(inputLine[1]);
  List<List<int>> pixels = [];

  for (int i = 0; i < H; i++) {
    List<int> inputLine = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
    pixels.add(inputLine);
  }
  for (int i = 0; i < H; i++) {
    myPrint(pixels[i]);
  }
}
void myPrint(List<int> oneLine) {
  String result = '';
  for (int num in oneLine) {
    if (num >= 128) {
      num = 1;
    } else {
      num = 0;
    }
    result += '$num ';
  }
  print(result);
}
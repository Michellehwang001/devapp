import 'dart:io';

void main() {
  String input = stdin.readLineSync(); // PAIZA

  Less less = Less(input);
  print(less.toLess());
}

String matching(String ch) {
  var rule = {
    'A': '4',
    'E': '3',
    'G': '6',
    'I': '1',
    'O': '0',
    'S': '5',
    'Z': '2',
  };

}

class Less {
  String word;
  // Map
  var rule = {
    'A': '4',
    'E': '3',
    'G': '6',
    'I': '1',
    'O': '0',
    'S': '5',
    'Z': '2',
  };

  // 생성자
  Less(this.word);

  String toLess() {
    String result = '';

    for (int i = 0; i < word.length; i++) {
      String ch = word[i];

      String converted = rule[ch];

      result += converted ?? ch;
      // if (converted == null) {
      //   result += ch;
      // }
      // else {
      //   result += converted;
      // }
    }
    return result;
  }
}
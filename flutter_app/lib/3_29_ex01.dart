void main() {
  Word word1 = Word('Hwang Hye Jung');
  print(word1.isVowel(1));
  print(word1.isVowel(3));
  print(word1.isConsonant(9));
}

class Word {
  String letters;
  static List<String> vowelList = ['a', 'e', 'i', 'o', 'u'];

  Word(this.letters);

  // i번째 글자가 모음이면 true a, i, u, e, o
  bool isVowel(int i) {
    String character = letters.substring(i - 1, i);

    for (var ch in vowelList) {
      if (character == ch) return true;
    }

    return false;
  }

  // i번째 글자가 자음이면 true
  bool isConsonant(int i) {
    String character = letters.substring(i - 1, i);

    for (var ch in vowelList) {
      if (character == ch) return false;
    }

    return true;
  }
}

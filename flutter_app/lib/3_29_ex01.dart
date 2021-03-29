void main() {
  Word word1 = Word('HwAng Hye Jung');
  print(word1.isVowel(1));
  print(word1.isVowel(3));
  print(word1.isConsonant(1));
  print(word1.isConsonant(2));
  print(word1.isConsonant(3));
}

class Word {
  String letters;
  static const List<String> vowelList = ['a', 'e', 'i', 'o', 'u'];

  Word(this.letters);

  // i번째 글자가 모음이면 true a, i, u, e, o
  bool isVowel(int i) {
    return vowelList.contains(letters.substring(i - 1, i).toLowerCase());
    /*
    String character = letters.substring(i - 1, i).toLowerCase();

    for (var ch in vowelList) {
      if (ch == character) return true;
    }

    return false;
    */
  }

  // i번째 글자가 자음이면 true
  bool isConsonant(int i) {

    return !(vowelList.contains(letters.substring(i - 1, i).toLowerCase()));
    /*
    String character = letters.substring(i - 1, i).toLowerCase();

    for (var ch in vowelList) {
      if (ch == character) return false;
    }

    return true;
     */
  }
}

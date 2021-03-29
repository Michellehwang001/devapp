class Word {
  String letters;
  Word(this.letters);
// i번째 글자가 모음이면 true  // a, i, u, e, o
  bool isVowel(int i) {
    List<String> str = ['a', 'i', 'u', 'e', 'o', 'A', 'I', 'U', 'E', 'O'];
    return letters.substring(i, i + 1) == str;
  }
// i번째 글자가 자음이면 true
  bool isConsonant(int i) {
    return false;
  }
}
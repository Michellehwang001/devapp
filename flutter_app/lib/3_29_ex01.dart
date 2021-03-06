void main() {
  Word dish = Word('dish');
  print(dish.toPlural()); // dishes

  Word cherry = Word('cherry');
  print(cherry.toPlural()); // cherries

  Word clock = Word('clock');
  print(clock.toPlural()); // clocks

  Word tax = Word('tax');
  print(tax.toPlural()); // taxes

  Word bench = Word('bench');
  print(bench.toPlural()); // benches

  Word tomato = Word('tomato');
  print(tomato.toPlural()); // tomatoes

  Word baby = Word('baby');
  print(baby.toPlural()); // babies

  Word leaf = Word('leaf');
  print(leaf.toPlural()); // leaves

  Word live = Word('live');
  print(live.toPlural()); // lives

  print(live);
}

class Word {
  String letters;
  static const List<String> vowelList = ['a', 'e', 'i', 'o', 'u'];

  Word(this.letters);

  // i번째 글자가 모음이면 true a, i, u, e, o
  bool isVowel(int i) {
    return vowelList.contains(letters.substring(i - 1, i).toLowerCase());
  }

  // i번째 글자가 자음이면 true
  bool isConsonant(int i) {
    return !(vowelList.contains(letters.substring(i - 1, i).toLowerCase()));
  }

  // 복수형으로
  // 마지막에 return 하는 형태의 코드가 좋다.
  String toPlural() {
    String result = '${letters}s';

    // s, x, ch, sh, o 로 끝나는 경우
    if (letters.endsWith('s') ||
        letters.endsWith('x') ||
        letters.endsWith('ch') ||
        letters.endsWith('sh') ||
        letters.endsWith('o')) {
      result = letters + 'es';
    }
    //자음 + y -> ies
    else if (letters.endsWith('y') && isConsonant(letters.length - 1)) {
        result = letters.replaceRange(
            letters.length - 1, letters.length, 'ies');
    }
    // f로 끝나는 경우 -> ves
    else if (letters.endsWith('f')) {
      result = letters.replaceRange(letters.length - 1, letters.length, 'ves');
    }
    // fe로 끝나는 경우 -> ves
    else if (letters.endsWith('fe')) {
      result = letters.replaceRange(letters.length - 2, letters.length, 'ves');
    }
    // 보통의 경우 + s
    // else {
    //   return letters + 's';
    // }

    return result;
  }

  @override
  String toString() {
    return 'Word{letters: $letters}';
  }
}



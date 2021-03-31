import 'dart:io';
import 'dart:math';

void main() {
  List<String> inputLine = stdin.readLineSync().split(' ');

  int a = int.parse(inputLine[0]);
  int b = int.parse(inputLine[1]);
  int R = int.parse(inputLine[2]);

  int N = int.parse(stdin.readLineSync());

  // 공사장, 공원생성
  Construction construction = Construction(a, b, R);
  // 공사을 공원에 셋팅
  Park park = Park(construction);

  // 나무값 입력
  for (int i = 0; i < N; i++) {
    List<String> inputLine = stdin.readLineSync().split(' ');

    int x = int.parse(inputLine[0]);
    int y = int.parse(inputLine[1]);

    // 나무생성
    Tree tree = Tree(x, y);
    // 공원에 나무 추가
    park.trees.add(tree);
  }

  // 시끄러운지 판단해서 출력
  for (int i = 0; i < park.trees.length; i++) {
    if (construction.isNoisy(park.trees[i]) == true) {
      print('noisy');
    } else {
      print('silent');
    }
  }
}

class Tree {
  int x;
  int y;

  Tree(this.x, this.y);
}

class Construction {
  int a;
  int b;
  int R;

  Construction(this.a, this.b, this.R);

  bool isNoisy(Tree tree) {
    bool result = true;

    // silent
    if (pow(tree.x - a, 2) + pow(tree.y - b, 2) >= pow(R, 2)) {
      return false;
    }

    return result;
  }
}

class Park {
  Construction construction;
  List<Tree> trees = [];

  Park(this.construction);
}

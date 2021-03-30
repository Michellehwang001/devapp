//거리 n과 그 단위 s를 입력 받아 mm로 변환해 출력하시오
//
//입력되는 거리의 단위는 km, m, cm의 3 종류로, 각각 다음과 같이 변환 할 수 있습니다.
//1km = 1000m
//1m = 100cm
//1cm = 10mm
//
// 1 km - 1000000
// 54 km - 540000000
// 2 cm - 20
// 12 m - 12000
void main() {
  Exam exam = Exam();
  print(exam.solution(1, 'km'));
  print(exam.solution(54, 'km'));
  print(exam.solution(2, 'cm'));
  print(exam.solution(12, 'm'));
}

class Exam {
  int solution(int n, String s) {
    int result = 0;

    switch (s) {
      case "km":
        result = toMm(toCm(toM(n)));
        break;
      case "m":
        result = toMm(toCm(n));
        break;
      case "cm":
        result = toMm(n);
        break;
      default:
        result = -1;
    }

    return result;
  }

  // Cm -> mm
  int toMm(int n) {
    return n * 10;
  }

  // m -> cm
  int toCm(int n) {
    return n * 100;
  }

  // km -> m
  int toM(int n) {
    return n * 1000;
  }
}

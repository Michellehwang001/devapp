import 'dart:math';

// 삼각형 면적,  원의 면적
void main() {
  print ('밑변이 10, 높이가 5인 삼각형의 넓이는? ${calcTriangleArea(10, 5)} 입니다.');
  print ('반지름이 10인 원의 넓이는? ${calcCircleArea(10)} 입니다.');
}

double calcTriangleArea(double bottom, double height) => bottom * height * 0.5;

double calcCircleArea(double radius) => pi * pow(radius, 2);

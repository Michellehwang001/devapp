void main() {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  final items = [1, 2, 3, 4, 5];

  items.where((e) => e % 2 == 0).forEach(print);

}

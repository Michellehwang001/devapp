import 'dart:async';

class Counter{
  int _counter = 0;

  final _counterStreamController = StreamController<int>();
  //final _counterStreamController = StreamController<int>()..add(0);

  // getter
  Stream<int> get counterStreamController => _counterStreamController.stream;

  void increment() {
    _counter++;
    _counterStreamController.add(_counter);
  }
// Stream<int> counterStream;
  //
  // Counter(){
  //   counterStream = _counterStreamController.stream;
  // };

  //Stream<int> counterStream = _counterStreamController.stream;

}
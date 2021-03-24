import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.deepPurple,
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.yellow,
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.cyan,
                    width: 150,
                    height: 150,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.orange,
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

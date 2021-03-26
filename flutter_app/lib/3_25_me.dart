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
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}
class ViewCheckList extends StatefulWidget {
  @override
  _ViewCheckListState createState() => _ViewCheckListState();
}

class _ViewCheckListState extends State<ViewCheckList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: true,
                onChanged: (value){
                },
              ),
              Checkbox(value: true),
              Checkbox(value: false),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: '삭제',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: '저장',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '추가',
          ),
        ],
      ),
    );
  }
}

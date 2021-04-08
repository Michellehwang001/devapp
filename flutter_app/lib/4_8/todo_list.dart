import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final _items = <Todo>[];

  var _todoController = TextEditingController();

  @override
  void dispose() {
    // 끝나면 해제
    _todoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할 일'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _todoController,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _addTodo(Todo(_todoController.text)),
                  child: Text('추가'),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: _items.map((todo) => _buildItemWidget(todo)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(Todo todo) {
    return ListTile(
      onTap: () => _toggleTodo(todo), // 완료/미완료
      title: Text(
        todo.title, // 할일
        style: todo.isDone
            ? TextStyle(
                decoration: TextDecoration.lineThrough,
                fontStyle: FontStyle.italic,
              )
            : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () => _deleteTodo(todo), // 쓰레기통 클릭 시 삭제되도록 수정
      ),
    );
  }

  // 할 일 추가
  void _addTodo(Todo todo) {
    setState(() {
      if (todo.title.isNotEmpty) {
        _items.add(todo);
        _todoController.text = '';
      }
    });
  }

  // 할 일 삭제
  void _deleteTodo(Todo todo) {
    setState(() {
      _items.remove(todo);
    });
  }

  // 할 일 완료/미완료
  void _toggleTodo(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
}

class Todo {
  bool isDone = false;
  String title;

  Todo(this.title);
}

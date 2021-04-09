import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  // firebase 사용하면서 추가
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

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
    Query query = FirebaseFirestore.instance.collection('todo');

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
            StreamBuilder<QuerySnapshot>(
                stream: query.snapshots(),
                builder: (context, snapshot) {
                  // 예외처리...
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }
                  final documents = snapshot.data.docs;
                  return Expanded(
                    child: ListView(
                      children: documents
                          .map((doc) => _buildItemWidget(doc))
                          .toList(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(DocumentSnapshot doc) {
    final todo = Todo(doc['title'], isDone: doc['isDone']);

    return ListTile(
      onTap: () => _toggleTodo(doc), // 완료/미완료
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
        onPressed: () => _deleteTodo(doc), // 쓰레기통 클릭 시 삭제되도록 수정
      ),
    );
  }

  // 할 일 추가
  // Future, async, await 비동기방식으로 수정
  Future<void> _addTodo(Todo todo) async {
    // Promise
    if (todo.title.isNotEmpty) {
      CollectionReference query = FirebaseFirestore.instance.collection('todo');

      // Map<String, dynamic>
      var data = {
        'title': todo.title,
        'isDone': todo.isDone,
      };

      DocumentReference value = await query.add(data);
    }
  }

  // 할 일 삭제
  // 콜백 callBack 방식 - 콜백지옥이 될 수 있다 - 대안 async - await
  void _deleteTodo(DocumentSnapshot todo) {
    CollectionReference query = FirebaseFirestore.instance.collection('todo');

    query
        .doc(todo.id)
        .delete()
        .then((value) => print('성공'))
        .catchError((error) => print('실패'));

    //_items.remove(todo);
  }

  // 할 일 완료/미완료
  void _toggleTodo(DocumentSnapshot todo) {
    CollectionReference query = FirebaseFirestore.instance.collection('todo');

    Future<void> updateUser() {
      return query
          .doc(todo.id)
          .update({'isDone': !todo['isDone']})
          .then((value) => print("Updated 성공"))
          .catchError((error) => print("Failed to update user: $error"));
    }

    updateUser();

    // setState(() {
    //   todo.isDone = !todo.isDone;
    // });
  }
}

class Todo {
  bool isDone = false;
  String title;

  Todo(this.title, {this.isDone = false});
}

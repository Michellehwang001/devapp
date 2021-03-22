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

// stless
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Title'),
      ),
      body: Column(
        children: [
          Text('HI~ there~',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
              //border: InputBorder.none,
              hintText: ' ID'
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: ' PW'
            ),
          ),
          ElevatedButton(
              onPressed: (){
                print('click!');
              },
              child: Text('Log In'),
          ),
          //Image.network('https://picsum.photos/250?image=9'),
          Image.network('http://cdn.newscj.com/news/photo/202010/newscj_%EC%B2%9C%EC%A7%80%EC%9D%BC%EB%B3%B4_2020_10_29_204631_833476.jpg',
          width: 300, height: 200,),
        ],
      ),
    );
  }
}

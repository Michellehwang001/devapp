import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final User user;

  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instargram Clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Instragram에 오신것을 환영합니다.',
                  style: TextStyle(fontSize: 24.0),
                ),
                Padding(padding: const EdgeInsets.all(8.0)),
                Text(
                  '사진과 동영상을 보려면 follow하세요',
                ),
                Padding(padding: const EdgeInsets.all(16.0)),
                SizedBox(
                  width: 300.0,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        Padding(padding: const EdgeInsets.all(4.0)),
                        SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(user.photoURL),
                            )),
                        Padding(padding: const EdgeInsets.all(8.0)),
                        Text(user.email, style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(user.displayName),
                        Padding(padding: const EdgeInsets.all(8.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network('https://avatars.githubusercontent.com/u/80811560?v=4', fit: BoxFit.cover),
                            ),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network('https://avatars.githubusercontent.com/u/80811560?v=4', fit: BoxFit.cover),
                            ),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network('https://avatars.githubusercontent.com/u/80811560?v=4', fit: BoxFit.cover),
                            ),
                          ],
                        ),
                        Padding(padding: const EdgeInsets.all(4.0)),
                        Text('facebook 친구'),
                        Padding(padding: const EdgeInsets.all(4.0)),
                        ElevatedButton(onPressed: () {}, child: Text('팔로우')),
                        Padding(padding: const EdgeInsets.all(4.0)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

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
      home: SendMail(),
    );
  }
}

class SendMail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Email'),
      ),
      body: Column(
        children: [
          CupertinoButton(
              child: Text('메일 보내기'),
              onPressed: () {
                _sendEmail();
              } )
        ],
      ),
    );
  }
}


void _sendEmail() async {
  final Email email = Email(
    body: '',
    subject: '[양파가족 문의]',
    recipients: ['onionfamily.official@gmail.com'],
    cc: [],
    bcc: [],
    attachmentPaths: [],
    isHTML: false,
  );

  try {
    await FlutterEmailSender.send(email);
  } catch (error) {
    String title = "기본 메일 앱을 사용할 수 없기 때문에 앱에서 바로 문의를 전송하기 어려운 상황입니다.\n\n아래 이메일로 연락주시면 친절하게 답변해드릴게요 :)\n\nonionfamily.official@gmail.com";
    String message = "";
    _showErrorAlert(title: title, message: message);
  }
}

void _showErrorAlert({String title, String message}) {
  print('$title : $message');
}

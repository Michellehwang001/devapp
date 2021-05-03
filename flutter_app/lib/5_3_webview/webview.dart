import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text('WebView'),
          ),
          body: WebView(
            initialUrl: 'https://michellehwang001.github.io/study_html_css/javascript/test_flutter.html',
            javascriptMode: JavascriptMode.unrestricted,
            javascriptChannels: <JavascriptChannel>{
              _toasterJavascriptChannel(context),
            },
          ),
        ),
        onWillPop: () async {

          return true;
        }
    );
  }
  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'messageHandler',
        onMessageReceived: (JavascriptMessage message) {
          print("click....");
        });
  }
}



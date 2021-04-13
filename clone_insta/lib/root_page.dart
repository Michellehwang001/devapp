import 'package:clone_insta/login_page.dart';
import 'package:clone_insta/tab_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasData) {
          return TabPage(snapshot.data);
        }
        else {
          return LoginPage();
        } //hwanghyejung001@gmail.com
      },
    );
  }
}

// class RootPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: Firebase.initializeApp(),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Center(
//             child: Text("firebase load fail"),
//           );
//         }
//         // firebase 사용 준비 끝
//         if (snapshot.connectionState == ConnectionState.done) {
//           StreamBuilder(
//             stream: FirebaseAuth.instance.authStateChanges(),
//             builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
//               return Home();
// if(snapshot.data == null) {
//   return LoginPage();
// }
// else {
//   return TabPage();
// }
//   },
// );
// if(snapshot.hasData) {
//   return TabPage();
// }
// else {
//   return LoginPage();
// }
//     }
//     return CircularProgressIndicator();
//   },
// );

// return StreamBuilder<UserCredential>(
//
// );

/*
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print('hasError');
          return null;
        } else if (snapshot.hasData) {
          return TabPage(snapshot.data);
        } else {
          return LoginPage();
        }

        // Check for errors
        // if (snapshot.hasError) {
        //   return SomethingWentWrong();
        // }

        // Once complete, show your application
        // if (snapshot.connectionState == ConnectionState.done) {
        //   return TabPage();
        // }

        // Otherwise, show something whilst waiting for initialization to complete
        // return LoginPage();
      },
    );
}}
     */

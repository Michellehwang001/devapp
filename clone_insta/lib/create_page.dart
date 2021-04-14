import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreatePage extends StatefulWidget {
  //final FirebaseUser user;
  User user;

  CreatePage(this.user);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEdigingController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  PickedFile _image;

  @override
  void dispose() {
    textEdigingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('새 게시물'),
        actions: [
          IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                // 이미지 업로드
                _uploadPost(context);
              })
        ],
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: _getImage,
        //onPressed: _getImage(ImageSource.gallery, context: context),
      ),
    );
  }

  Future<void> _uploadPost(BuildContext context) async {
    // 이미지 업로드
    final firebaseStorageRef = FirebaseStorage.instance
        .ref()
        .child('post')
        .child('${DateTime.now().millisecondsSinceEpoch}.png');

    // _image -> File(_image.path)
    final task = await firebaseStorageRef.putFile(
        // contentType 'image/*' 하면 다 올라간다.
        File(_image.path),
        SettableMetadata(contentType: 'image/png'));

    //final downloadUrl = (await task).ref.getDownloadURL();

    final uri = await task.ref.getDownloadURL();

    var doc = FirebaseFirestore.instance.collection('test01').doc();

    // https://firebase.flutter.dev/docs/firestore/usage#adding-documents
    // set형태 - documentID 를 미리 가져올 수 있다.
    await doc.set({
      'id': doc.id,
      'photoUrl': uri.toString(),
      'contents': textEdigingController.text,
      'email': widget.user.email,
      'displayName': widget.user.displayName,
      'userPhoto': widget.user.photoURL,
    });
    // 현재 화면을 닫고 돌아간다.
    Navigator.pop(context);
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          //_image == null ? Text('No Image') : Image.file(_image),
          _image == null ? Text('No Image') : Image.file(File(_image.path)),
          TextField(
            decoration: InputDecoration(hintText: '내용을 입력하세요!'),
            controller: textEdigingController,
          ),
        ],
      ),
    );
  }

  Future _getImage() async {
    PickedFile image = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
}

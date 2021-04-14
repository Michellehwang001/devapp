import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreatePage extends StatefulWidget {
  final FirebaseUser user;

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
                final firebaseStorageRef = FirebaseStorage.instance
                    .ref()
                    .child('post')
                    .child('${DateTime
                    .now()
                    .millisecondsSinceEpoch}.png');

                // _image -> File(_image.path)
                final task = firebaseStorageRef.putFile(
                    File(_image.path), StorageMetadata(contentType: 'image/png'));

                task.onComplete.then((value) {
                  var downloadUrl = value.ref.getDownloadURL();

                  downloadUrl.then((uri) {
                    var doc = Firestore.instance.collection('test01')
                        .document();

                    //Json 형태로 저장
                    doc.setData({
                      'id': doc.documentID,
                      'photoUrl': uri.toString(),
                      'contents': textEdigingController.text,
                      'email': widget.user.email,
                      'displayName': widget.user.displayName,
                      'userPhoto': widget.user.photoUrl,
                    }).then((onValue) {
                      Navigator.pop(context);
                    });
                  });
                });
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

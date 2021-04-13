import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
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
        actions: [IconButton(icon: Icon(Icons.send), onPressed: () {})],
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
  // Future _getImage() async {
  //   File image = await ImagePicker.pickImage(source: ImageSource.gallery);
  //
  //   setState(() {
  //     _image = image;
  //   });
  // }
}

  //void _getImage(ImageSource source, {BuildContext context}) {
    // final ImagePicker _picker = ImagePicker();
    //
    // final pickedFile = _picker.getImage(
    //   source: source,
    //   maxWidth: 80.0,
    //   maxHeight: 80.0,
    //   imageQuality: 1,
    // );
//   }
// }

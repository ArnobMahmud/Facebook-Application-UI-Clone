import 'dart:io';

import 'package:facebook_ui_clone/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class StatusPost extends StatefulWidget {
  @override
  _StatusPostState createState() => _StatusPostState();
}

class _StatusPostState extends State<StatusPost> {
  var post = Post();
  final _formKey = GlobalKey<FormState>();
  void _postStatus() {}
  String _imagePath = '';

  void _openCamera() {
    ImagePicker().getImage(source: ImageSource.camera).then((imgFile) {
      setState(() {
        _imagePath = imgFile.path;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Your Post'),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextFormField(
                maxLines: 10,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.green),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: _imagePath == null
                      ? 'Chose a pic'
                      : Image.file(File(_imagePath)),
                ),
                IconButton(
                    icon: Icon(Icons.camera),
                    onPressed: () {
                      _openCamera();
                    })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 90, left: 90),
            child: RaisedButton(
                splashColor: Colors.white,
                child: Text('Post'),
                color: Colors.blue,
                onPressed: () {
                  _postStatus();
                }),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StatusPost extends StatefulWidget {
  @override
  _StatusPostState createState() => _StatusPostState();
}

class _StatusPostState extends State<StatusPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Your Post'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Form(
          child: TextFormField(
            maxLines: 10,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          
        ),      ),
      
    );
  }
}

import 'package:facebook_ui_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// This page temorary disabled by arnob 

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[700],
        title: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Form(
              child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintStyle: TextStyle(fontSize: 17, color: Colors.white),
              labelText: 'Search',
              border: InputBorder.none,
            ),
          )),
        ),
      ),
    );
  }
}

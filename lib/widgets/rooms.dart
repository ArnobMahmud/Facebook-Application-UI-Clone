import 'package:facebook_ui_clone/data/data.dart';
import 'package:facebook_ui_clone/models/user_model.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUser;

  const Rooms({
    Key key,
    this.onlineUser,
    List<User> onlineUsers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.orange,
      child: ListView.builder(
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(2.0),
            height: 20.0,
            width: 20,
            color: Colors.red,
          );
        },
      ),
    );
  }
}

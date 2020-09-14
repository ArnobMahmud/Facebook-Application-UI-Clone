import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui_clone/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 12, 8.0, 0.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[200],
                    backgroundImage:
                        CachedNetworkImageProvider(currentUser.imageUrl),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'What\'s on your mind?'),
                  ),
                )
              ],
            ),
            const Divider(
              height: 10.0,
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: () => print('Live'),
                  icon: Icon(Icons.videocam, color: Colors.red),
                  label: Text('Live'),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                  onPressed: () => print('Photo'),
                  icon: Icon(Icons.photo_library,
                   color: Colors.green),
                  label: Text('Photo'),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                  onPressed: () => print('Room'),
                  icon: Icon(Icons.video_call,
                   color: Colors.purpleAccent),
                  label: Text('Room'),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
              ],
            )
          ],
        ));
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui_clone/colors/colors.dart';
import 'package:facebook_ui_clone/models/post_model.dart';
import 'package:facebook_ui_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _PostHeader(post: post),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(post.caption),
                    post.imageUrl != null
                        ? SizedBox.shrink()
                        : SizedBox(
                            height: 8.0,
                          ),
                  ],
                )
              ],
            ),
          ),
          post.imageUrl != null
              ? CachedNetworkImage(imageUrl: post.imageUrl)
              : SizedBox.shrink(),
          Padding(
            padding: EdgeInsets.all(10),
            child: _PostStats(post: post),
          ),
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;

  const _PostHeader({
    Key key,
    this.post,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          imageUrl: post.user.imageUrl,
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Text('${post.timeAgo}  '),
                  Icon(
                    Icons.public,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
      ],
    );
  }
}

class _PostStats extends StatelessWidget {
  final Post post;

  const _PostStats({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Paint.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                '${post.likes}',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${post.comments} comments',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${post.shares} shares',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _PostButton(
              icon : Icon(
                MdiIcons.thumbUpOutline,
                color : Colors.grey,
                size : 20.0,
              ),

              label: 'Like',
              onTap : () => print('like'),

            ),
            _PostButton(
              icon : Icon(
                MdiIcons.commentOutline,
                color : Colors.grey,
                size : 20.0,
              ),

              label: 'Comment',
              onTap: () => print('Comment'),

            ),
            _PostButton(
              icon : Icon(
                MdiIcons.shareOutline,
                color : Colors.grey,
                size : 23.0,
              ),

              label: 'Share',
              onTap : () => print('share'),

            )
          ],
        )
      ],
    );
  }
}


class _PostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;

  const _PostButton({Key key, this.icon, this.label, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 25.0,
        child: Row(
          children: [
            icon,
            SizedBox(width: 4.0,),
            Text(label),
          ],
        ),
      ),
    );
  }
}
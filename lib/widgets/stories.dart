import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui_clone/colors/palette.dart';
import 'package:facebook_ui_clone/models/story_model.dart';
import 'package:facebook_ui_clone/models/user_model.dart';
import 'package:facebook_ui_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({
    Key key,
    this.currentUser,
    this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: _StoryCard(
                  isAddStory: true,
                  currentUser: currentUser,
                ),
              );
            }
            final Story story = stories[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: _StoryCard(story: story),
            );
          }),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User currentUser;
  final Story story;

  const _StoryCard(
      {Key key, this.isAddStory = false, this.currentUser, this.story})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: isAddStory ? currentUser.imageUrl : story.imageUrl,
            width: 110.0,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110.0,
          decoration: BoxDecoration(
            gradient: Palette.storyGradient,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        Positioned(
            top: 4.0,
            left: 4.0,
            child: isAddStory
                ? Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        icon: const Icon(
                          Icons.add,
                        ),
                        iconSize: 21,
                        color: Palette.facebookBlue,
                        onPressed: () => print('Add Story')),
                  )
                : ProfileAvatar(
                    imageUrl: story.user.imageUrl,
                    hasBorder: !story.isViewed,
                  )
            ),
            Positioned(
              bottom: 8.0,
              left: 8.0,
              right: 8.0,
              child: Text(
                isAddStory? 'Add to Story' : story.user.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              )
              )
      ],
    );
  }
}

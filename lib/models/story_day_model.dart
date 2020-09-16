import 'package:facebook_ui_clone/models/user_model.dart';

class Story {
  final User user;
  final String imageUrl;
  final bool isViewed;

  Story({
    this.user, 
    this.imageUrl, 
    this.isViewed = false,
  });
}

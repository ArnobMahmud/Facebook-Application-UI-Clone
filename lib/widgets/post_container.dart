import 'package:facebook_ui_clone/models/post_model.dart';
import 'package:facebook_ui_clone/widgets/widgets.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5),
      height: 100.0,
      child: Column(
        children : [
            
        ],
      ),
    );
  }
}

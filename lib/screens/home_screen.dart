import 'package:facebook_ui_clone/data/data.dart';
import 'package:facebook_ui_clone/models/post_model.dart';
import 'package:facebook_ui_clone/screens/top_bar_section.dart';
import 'package:facebook_ui_clone/widgets/button.dart';
import 'package:facebook_ui_clone/widgets/room_section.dart';
import 'package:facebook_ui_clone/widgets/stories_day.dart';
import 'package:facebook_ui_clone/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_clone/colors/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildCustomScrollView(context),
    );
  }

  CustomScrollView buildCustomScrollView(BuildContext context) {
    return CustomScrollView(
      slivers: [
        buildSliverAppBar(context),
        buildSliverToBoxAdapter(),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Rooms(onlineUsers: onlineUsers),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: MyDay(currentUser: currentUser, stories: stories),
          ),
        ),
        buildSliverList(),
      ],
    );
  }

  SliverAppBar buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
            color: Paint.facebookBlue,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.2,
          ),
        ),
        centerTitle: false,
        floating: true,
        actions: [
          Button(
            icon: Icons.search,
            iconSize: 30,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
          buildButton()
        ],
      );
  }

  Button buildButton() {
    return Button(
          icon: MdiIcons.facebookMessenger,
          iconSize: 30,
          onPressed: () => print('messenger'),
        );
  }

  SliverList buildSliverList() {
    return SliverList(delegate: SliverChildBuilderDelegate((context, index) {
        final Post post = posts[index];
        return StatusContainer(
          post: post,
        );
      },
      childCount: posts.length)
      );
  }

  SliverToBoxAdapter buildSliverToBoxAdapter() {
    return SliverToBoxAdapter(
          child: UpperBar(currentUser: currentUser));
  }
}

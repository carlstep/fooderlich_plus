import 'package:flutter/material.dart';

import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/components/components.dart';

class FriendPostListView extends StatelessWidget {
  // a list of Posts
  final List<Post> friendPosts;
  
  const FriendPostListView({
    Key? key,
    required this.friendPosts,
}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // left and right padding
    return Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 0,
        ),
      // positions the Text in the post
      child: Column(
        // layout in vertical format
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // text header
          Text('Social Chefs 👩‍🍳',
          style: Theme.of(context).textTheme.headline1),
          // spacing by way of SizedBox
          const SizedBox(height: 16),
          // TODO: Add PostListView here
          // padding for the end of the list
          const SizedBox(height: 16),
        ],
      ),
    );
  }
  
}
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
          // create ListView.separated with two
          // IndexWidgetBuilder callbacks
          ListView.separated(
            // because nesting 2 ListViews, set primary to false
            // flutter now knows this isn't the primary scroll view
            primary: false,
            // disables the scrolling for the nested ListView
            physics: const NeverScrollableScrollPhysics(),
            // creates a fixed-length scrollable list
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: friendPosts.length,
            itemBuilder: (context, index) {
              // for every item in the list, create a FriendPostTile
              final post = friendPosts[index];
              return FriendPostTile(post: post);
            },
            separatorBuilder: (context, index) {
              // for every item, create SizedBox for spacing
              return const SizedBox(height: 16);
            },
          ),
          // padding for the end of the list
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}



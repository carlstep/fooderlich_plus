import 'package:flutter/material.dart';

import 'components.dart';
import 'package:fooderlich/models/models.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // creates a Row to arrange widgets horizontally
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // first element is the CircleAvatar
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20,
        ),
        // creates padding by use of SizedBox
        const SizedBox(width: 16),
        // use Expanded to make children fill the container
        Expanded(
          // Column to arrange widgets vertically
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text to display the comments of post
              Text(post.comment),
              // Text to display timestamp of post
              Text(
                '${post.timestamp} mins ago',
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

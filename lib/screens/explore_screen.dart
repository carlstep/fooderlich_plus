import 'package:flutter/material.dart';

import 'package:fooderlich/components/components.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  // creates a service to mock a server response
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Build method creates FutureBuilder
    // Runs an asynchronous task.
    return FutureBuilder(
      /* 'FutureBuild' takes a 'Future' as a parameter - 'getExploreData'
      creates a future that will return an 'ExploreData' instance. The
      'ExploreData' instance will contain two lists - 'todayRecipes' and
       'friendPosts' */
      future: mockService.getExploreData(),
      // within 'builder', use a 'snapshot' to check current state of 'Future'
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        // Checks IF the future is complete
        // 'Future' is complete and can extract data to pass to the widget
        if (snapshot.connectionState == ConnectionState.done) {
          // IF future is complete, return the ListView.
          // in this instance, ListView will hold two ListViews as children
          return ListView(
            // sets the scroll-direction to vertical
            scrollDirection: Axis.vertical,
            children: [
              // returns the TodayRecipeListView
              TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
              // SizedBox for spacing
              const SizedBox(height: 16),
              // creates FriendPostListView, extracts friendPosts from
              // ExploreData
              FriendPostListView(friendPosts: snapshot.data?.friendPosts ?? []),
            ],
          );
        } else {
          // shows a 'spinner' to let user know something is happening
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

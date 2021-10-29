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
    // a placeholder
    // Build method creates FutureBuilder
    return FutureBuilder(
    /* 'FutureBuild' takes a 'Future' as a parameter - 'getExploreData' creates
    a future that will return an 'ExploreData' instance. The 'ExploreData'
    instance will contain two lists - 'todayRecipes' and 'friendPosts' */
      future: mockService.getExploreData(),
      // within 'builder', use a 'snapshot' to check current state of 'Future'
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        // TODO: Add Nested List Views
        // 'Future' is complete and can extract data to pass to the widget
        if (snapshot.connectionState == ConnectionState.done) {
          /* 'snapshot.data' returns 'ExploreData' to extract 'todayRecipes'
          and pass to the list view - 'TodayRecipeListView' */
          final recipes = snapshot.data?.todayRecipes ?? [];
          // returns the TodayRecipeListView
          return TodayRecipeListView(recipes: recipes);
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
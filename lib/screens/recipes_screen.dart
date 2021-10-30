import 'package:flutter/material.dart';

import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';
import 'package:fooderlich/components/components.dart';

class RecipesScreen extends StatelessWidget {
  // creates a mock service
  final exploreService = MockFooderlichService();

  RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // creates a FutureBuilder
    return FutureBuilder(
      // uses getRecipes, returns a list of recipes to display
      // the is a list of SimpleRecipes
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        // checks IF the future is complete
        if (snapshot.connectionState == ConnectionState.done) {
          // TODO: Add RecipesGridView
          // placeholder for RecipesGridView
          return const Center(child: Text('Recipe Screen'),
          );
        } else {
          // shows a spinning icon to show app is working
        return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
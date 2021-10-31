import 'package:flutter/material.dart';
import 'package:fooderlich/components/recipe_thumbnail.dart';

import 'components.dart';
import 'package:fooderlich/models/models.dart';

class RecipesGridView extends StatelessWidget {
  // class calls on a List of recipes
  final List<SimpleRecipe> recipes;

  const RecipesGridView({
    Key? key,
    required this.recipes,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 16 pixels of padding
    return Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
      // use GridView.builder
      child: GridView.builder(
        // tells the grid how many items to display
        itemCount: recipes.length,
        // sets the crossAxisCount to 2
        gridDelegate:
          const
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          // for every index item, fetch the recipe and create
          // the RecipeThumbnail
          final simpleRecipe = recipes[index];
          return RecipeThumbnail(recipe: simpleRecipe);
        },
      ),
    );
  }
}

// TODO: Challenge 2 - Add a new GridView layout
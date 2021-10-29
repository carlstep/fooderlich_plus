import 'package:flutter/material.dart';

// imports the barrel files, to use the data models and UI components.
import 'package:fooderlich/components/components.dart';
import 'package:fooderlich/models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  // the class needs a list of recipes
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({
    Key? key,
    required this.recipes,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // adds padding to the build
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      // adds a column for widgets in a vertical layout
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // the header text for recipe of the day
          Text('Recipes of the Day',
          style: Theme.of(context).textTheme.headline1),
          // SizedBox for spacing
          const SizedBox(height: 16),
          // a Container, 400 pixels tall, to hold ListView
          Container(
            height: 400,
            // sets the color to transparent
            color: Colors.transparent,
            // this widget creates 2 'IndexedWidgetBuilder's
            child: ListView.separated(
              // direction of the scroll
              scrollDirection: Axis.horizontal,
              // sets the number of items in the ListView
              itemCount: recipes.length,
              // creates the 'itemBuilder' callback and
              // goes thru every item in the list
              itemBuilder: (context, index) {
                // get the recipe for the current index and build the card
                final recipe = recipes[index];
                return buildCard(recipe);
              },
              // creates a separatorBuilder callback
              // which will go thru every item in the list
              separatorBuilder: (context, index) {
                // creates a SizedBox  for every item in the list
                return const SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    }
  }

}
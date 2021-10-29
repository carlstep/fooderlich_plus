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
            // TODO: Add ListView Here
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  // TODO: Add buildCard() widget here

}
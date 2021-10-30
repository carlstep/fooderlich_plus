import 'package:flutter/material.dart';

import 'package:fooderlich/models/models.dart';

class RecipeThumbnail extends StatelessWidget {
  // the class requires SimpleRecipe as a parameter
  final SimpleRecipe recipe;

  const RecipeThumbnail({
    Key? key,
    required this.recipe,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // container with 8 pixels of padding
    return Container(
      padding: const EdgeInsets.all(8.0),
      // column for a vertical layout
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Expanded holds an Image and fills the remaining space
          Expanded(
            // Image is within ClipRRect this clips the image
            // to make the borders rounded
              child: ClipRRect(
                child: Image.asset('${recipe.dishImage}',
                fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
          ),
          // SizedBox to add some space
          const SizedBox(height: 10),
          // adds two Text widgets - recipe.title and recipe.duration
          Text(
            recipe.title,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            recipe.duration,
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
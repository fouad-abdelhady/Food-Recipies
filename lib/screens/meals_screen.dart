import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_/widgets/app_widgets/meal_item.dart';
import 'package:food_/widgets/platform_based_widgets/app_scaffold.dart';
import 'package:food_/data/catigories_data.dart';

class MealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    final pageTitle = arguments['title'];
    final catigoryId = arguments['id'];

    final catigoryMeals = DUMMY_MEALS
        .where((meal) => meal.catigories.contains(catigoryId))
        .toList();

    return AppScaffold(
      appBarTitle: pageTitle,
      pageBody: ListView.builder(
        itemBuilder: (context, index) {
          return Center(
            child: MealItem(
              title: catigoryMeals[index].title,
              imageUrl: catigoryMeals[index].imageUrl,
              duration: catigoryMeals[index].duration,
              affordability: catigoryMeals[index].affordable,
              complexity: catigoryMeals[index].complexity,
            ),
          );
        },
        itemCount: catigoryMeals.length,
      ),
    );
  }
}

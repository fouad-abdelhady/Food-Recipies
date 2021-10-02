import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_/widgets/main_widgets/app_scaffold.dart';
import 'package:food_/data/catigories_data.dart';

class MealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    final pageTitle = arguments['title'];
    final color = arguments['color'] as Color;
    final catigoryId = arguments['id'];

    final catigoryMeals = DUMMY_MEALS
        .where((meal) => meal.catigories.contains(catigoryId))
        .toList();

    return AppScaffold(
      appBarTitle: pageTitle,
      pageBody: ListView.builder(
        itemBuilder: (context, index) {
          return Center(
            child: Text("${catigoryMeals[index].title}}"),
          );
        },
        itemCount: catigoryMeals.length,
      ),
    );
  }
}

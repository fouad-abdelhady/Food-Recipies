import 'package:flutter/cupertino.dart';
import 'package:food_/data/catigories_data.dart';
import 'package:food_/widgets/platform_based_widgets/app_scaffold.dart';
import 'package:food_/models/meal.dart';

class MealDetails extends StatelessWidget {
  Meals getMealByIndex({required String mealId}) {
    print('the index is $mealId');
    return DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    Meals meal = getMealByIndex(
        mealId: ModalRoute.of(context)!.settings.arguments as String);
    return AppScaffold(
      appBarTitle: "Meal Details",
      pageBody: Center(
        child: Text(meal.title),
      ),
    );
  }
}

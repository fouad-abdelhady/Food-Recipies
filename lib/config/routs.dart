import 'package:flutter/material.dart';
import 'package:food_/screens/catigories_screen.dart';
import 'package:food_/screens/meal_details.dart';
import 'package:food_/screens/meals_screen.dart';

class Routs {
  static const CATIGORIES_SCREEN = '/catigories_screen';
  static const MEALS_DETAILS_SCREEN = '/meals_details_screen';
  static const MEALS_SCREEN = '/meals_screen';

  static MaterialPageRoute ONGENERATE_ROUTE(RouteSettings settings) {
    switch (settings.name) {
      case CATIGORIES_SCREEN:
        return MaterialPageRoute(
            builder: (_) => CatigoriesScreen(), settings: settings);
      case MEALS_DETAILS_SCREEN:
        return MaterialPageRoute(
            builder: (_) => MealDetails(), settings: settings);
      case MEALS_SCREEN:
        return MaterialPageRoute(
            builder: (_) => MealsScreen(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => CatigoriesScreen(), settings: settings);
    }
  }
}

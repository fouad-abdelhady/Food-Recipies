import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_/main.dart';
import 'package:food_/screens/meals.dart';

class CategoryItem extends StatelessWidget {
  static const double OPACITY_VALUE = 0.7;
  static const double RADIOUS = 15;
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  void _moveToSelectedCategory(BuildContext context) {
    Navigator.of(context).push(_getAdaptiveRoute());
  }

  PageRoute _getAdaptiveRoute() {
    return MyApp.DEVICE_PLATFORM
        ? CupertinoPageRoute(builder: (_) => _getScreenWidget)
        : MaterialPageRoute(builder: (_) => _getScreenWidget);
  }

  Widget get _getScreenWidget => MealsScreen(title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(RADIOUS),
      onTap: () => _moveToSelectedCategory(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color, color.withOpacity(OPACITY_VALUE)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(RADIOUS)),
      ),
    );
  }
}

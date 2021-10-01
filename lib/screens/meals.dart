import 'package:flutter/cupertino.dart';
import 'package:food_/models/catigories.dart';
import 'package:food_/widgets/main_widgets/app_scaffold.dart';

class MealsScreen extends StatelessWidget {
  final String pageTitle;
  MealsScreen(this.pageTitle);
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: pageTitle,
      pageBody: Center(child: Text(pageTitle)),
    );
  }
}

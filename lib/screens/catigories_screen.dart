import 'package:flutter/cupertino.dart';
import '../widgets/platform_based_widgets/app_scaffold.dart';
import 'package:food_/data/catigories_data.dart';
import '../widgets/app_widgets/category_item.dart';

class CatigoriesScreen extends StatelessWidget {
  static const String TITLE = "Catigories";
  @override
  Widget build(BuildContext context) {
    return AppScaffold(appBarTitle: TITLE, pageBody: _getBody());
  }

  Widget _getBody() => GridView(
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
      children: DUMMY_CATEGORIES
          .map((catItemData) => CategoryItem(
              catItemData.title, catItemData.color, catItemData.id))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20));
}

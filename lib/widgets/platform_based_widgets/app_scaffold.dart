import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_/main.dart';

class AppScaffold extends StatelessWidget {
  final String appBarTitle;

  final Widget pageBody;

  AppScaffold({required this.appBarTitle, required this.pageBody});
  @override
  Widget build(BuildContext context) {
    return MyApp.DEVICE_PLATFORM
        ? getCupScaffold(context)
        : getAndroidScaffold(context);
  }

  Text _getTitle(BuildContext context) {
    return Text(appBarTitle,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(letterSpacing: 5.0, color: Colors.white));
  }

  CupertinoPageScaffold getCupScaffold(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: _getTitle(context),
      ),
      child: pageBody,
    );
  }

  Scaffold getAndroidScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(0, 0, 70, 1),
            Color.fromRGBO(0, 0, 70, 0.5)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        ),
        title: _getTitle(context),
      ),
      body: pageBody,
    );
  }
}

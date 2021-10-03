import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_/config/routs.dart';
import 'package:food_/screens/catigories_screen.dart';
import 'package:food_/widgets/platform_based_widgets/app_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final DEVICE_PLATFORM = Platform.isIOS;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.indigo[700], secondary: Colors.amber[900]),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(
                fontFamily: 'RobotoCondensed',
              ),
              headline5: TextStyle(
                fontFamily: 'RobotoCondensed',
              )),
          appBarTheme: AppBarTheme(
              centerTitle: true,
              toolbarTextStyle: TextStyle(
                fontFamily: 'RobotoCondensed',
              ))),
      title: "Food Recipes",
      routes: {
        '/': (context) => CatigoriesScreen(),
      },
      onGenerateRoute: (settings) => Routs.ONGENERATE_ROUTE(settings),
    );
  }
}

class HomePage extends StatelessWidget {
  ///ture if the platform is IOS other Android
  final appBarTitle = "Catigories";

  Widget getBody() {
    return SafeArea(child: Center(child: Text("Hello World !")));
  }

  @override
  Widget build(BuildContext context) {
    Widget getAppBarTitle() {
      return Center(
          child: Text(
        appBarTitle,
        style: Theme.of(context).textTheme.headline6,
      ));
    }

    return AppScaffold(
      appBarTitle: "Home Page",
      pageBody: getBody(),
    );
  }
}

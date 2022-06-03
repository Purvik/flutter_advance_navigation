import 'package:advance_navigation/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:advance_navigation/routes.dart';
import './screens/index_screens.dart';
import 'screens/app_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigations Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppHome(title: 'Flutter Navigations Demo'),
      navigatorKey: AppNavigator.instance.navigatorKey,
      routes: {
        AppHome.route: (context) =>
            const AppHome(title: 'Flutter Navigations Demo'),
        ScreenOne.route: (context) => const ScreenOne(),
        ScreenTwo.route: (context) => const ScreenTwo(),
        ScreenThree.route: (context) => const ScreenThree(),
        ScreenFour.route: (context) => const ScreenFour(),
        ScreenFive.route: (context) => const ScreenFive(),
      },
    );
  }
}

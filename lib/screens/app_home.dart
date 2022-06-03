import 'package:advance_navigation/app_navigator.dart';
import 'package:flutter/material.dart';

import '../routes.dart';

class AppHome extends StatefulWidget {
  static String route = Routes.kAppHome;
  const AppHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Navigation demo with Navigation Key',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                AppNavigator.instance.navigateTo(Routes.kScreenOne);
              },
              child: const Text('Navigate to Screen 1'),
            ),
          ],
        ),
      ),
    );
  }
}
/**
ElevatedButton(
              onPressed: () {
                _navigateToScreenRoute(Routes.kScreenTwo);
              },
              child: const Text('Navigate to Screen 2'),
            ),
            ElevatedButton(
              onPressed: () {
                _navigateToScreenRoute(Routes.kScreenThree);
              },
              child: const Text('Navigate to Screen 3'),
            ),
            ElevatedButton(
              onPressed: () {
                _navigateToScreenRoute(Routes.kScreenFour);
              },
              child: const Text('Navigate to Screen 4'),
            ),
            ElevatedButton(
              onPressed: () {
                _navigateToScreenRoute(Routes.kScreenFive);
              },
              child: const Text('Navigate to Screen 5'),
            ),
             **/
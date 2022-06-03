import 'package:flutter/material.dart';
import 'package:advance_navigation/routes.dart';

import '../app_navigator.dart';

class ScreenTwo extends StatefulWidget {
  static String route = Routes.kScreenTwo;

  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
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
                AppNavigator.instance.navigateTo(Routes.kScreenThree);
              },
              child: const Text('Navigate to Screen 3'),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                AppNavigator.instance.goBack();
              },
              child: const Text('Go Back Using Button'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:advance_navigation/routes.dart';

import '../app_navigator.dart';

class ScreenThree extends StatefulWidget {
  static String route = Routes.kScreenThree;

  const ScreenThree({Key? key}) : super(key: key);

  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
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
                AppNavigator.instance.navigateTo(Routes.kScreenFour);
              },
              child: const Text('Navigate to Screen 4'),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                AppNavigator.instance.removeAndPush(Routes.kScreenFour);
              },
              child: const Text('Remove Screen 3 and Move to Screen 4'),
            ),
          ],
        ),
      ),
    );
  }
}

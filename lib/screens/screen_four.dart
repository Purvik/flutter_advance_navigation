import 'package:flutter/material.dart';
import 'package:advance_navigation/routes.dart';

import '../app_navigator.dart';

class ScreenFour extends StatefulWidget {
  static String route = Routes.kScreenFour;

  const ScreenFour({Key? key}) : super(key: key);

  @override
  _ScreenFourState createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 4'),
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
                AppNavigator.instance.replaceWith(Routes.kScreenFive);
              },
              child: const Text('Replace Screen 4 with Screen 5'),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                AppNavigator.instance.removeUntil(Routes.kScreenOne);
              },
              child: const Text('Pop Until Screen 1'),
            ),
          ],
        ),
      ),
    );
  }
}

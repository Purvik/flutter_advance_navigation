import 'package:flutter/material.dart';
import 'package:advance_navigation/routes.dart';

import '../app_navigator.dart';

class ScreenFive extends StatefulWidget {
  static String route = Routes.kScreenFive;

  const ScreenFive({Key? key}) : super(key: key);

  @override
  _ScreenFiveState createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 5'),
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
                AppNavigator.instance.removeAllAndNavigateTo(Routes.kAppHome);
              },
              child: const Text('Navigate to App Home'),
            ),
          ],
        ),
      ),
    );
  }
}

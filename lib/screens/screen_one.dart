import 'package:advance_navigation/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:advance_navigation/routes.dart';

class ScreenOne extends StatefulWidget {
  static String route = Routes.kScreenOne;

  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  late String? routeName;

  @override
  void initState() {
    routeName = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
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
                AppNavigator.instance.navigateTo(Routes.kScreenTwo);
              },
              child: const Text('Navigate to Screen 2'),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                String? _name = AppNavigator.instance.getCurrentRoute();
                if (_name != null) routeName = _name;
                setState(() {});
              },
              child: const Text('Get Route Name'),
            ),
            const SizedBox(height: 18),
            Visibility(
              visible: routeName != null,
              child: Text(
                '{$routeName}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

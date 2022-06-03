import 'package:flutter/material.dart';

class AppNavigator {
  static final AppNavigator _instance = AppNavigator._();

  AppNavigator._();

  static AppNavigator get instance => _instance;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /* Navigate to another screen using route name */
  Future<dynamic>? navigateTo(String routeName) =>
      navigatorKey.currentState?.pushNamed(routeName);

  /* Navigate to one step back */
  void goBack() {
    navigatorKey.currentState?.pop();
  }

  /* Remove all screen from stack until we reach to mentioned route in stack */
  void removeUntil(String routeName) {
    navigatorKey.currentState?.popUntil(ModalRoute.withName(routeName));
  }

  /* Go back one step and push mentioned route in stack */
  Future<dynamic>? removeAndPush(String routeName) {
    navigatorKey.currentState?.popAndPushNamed(routeName);
  }

  /* Replace mentioned route with current route being displayed */
  Future<dynamic>? replaceWith(String routeName) {
    navigatorKey.currentState?.pushReplacementNamed(routeName);
  }

  /* Push mentioned route in stack and remove all routes from stack*/
  Future<dynamic>? removeAllAndNavigateTo(String routeName) =>
      navigatorKey.currentState
          ?.pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);

  /* Get the name of current route */
  String? getCurrentRoute() {
    if (navigatorKey.currentContext != null) {
      var route = ModalRoute.of(navigatorKey.currentContext!);
      if (route != null) {
        return route.settings.name;
      }
    }
    return '';
  }
}

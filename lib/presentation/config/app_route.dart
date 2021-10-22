import 'package:flutter/material.dart';
import 'package:unilever_app/presentation/presentation_export.dart';

class AppRouter {
  static Route onGenerate(RouteSettings settings) {
    // ignore: avoid_print
    print('This is the route ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      // ignore: no_duplicate_case_values
      case HomeScreen.routeName:
        return HomeScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text('Error')),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}

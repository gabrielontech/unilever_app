import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/welcome';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const WelcomeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({Key? key}) : super(key: key); 

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const HomeScreen(), settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    
    );
  }
}
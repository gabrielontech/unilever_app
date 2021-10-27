import 'package:flutter/material.dart';
import 'package:unilever_app/presentation/presentation_export.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  static const String routeName = '/shopping';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const ShoppingScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: const Text(
          "Shopping",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
  }
}
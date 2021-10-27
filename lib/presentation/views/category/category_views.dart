import 'package:flutter/material.dart';
import 'package:unilever_app/presentation/presentation_export.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  static const String routeName = '/category';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const CategoryScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Category",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
  }
}
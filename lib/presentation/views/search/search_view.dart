import 'package:flutter/material.dart';
import 'package:unilever_app/presentation/presentation_export.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static const String routeName = '/search';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const SearchScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: const Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
  }
}
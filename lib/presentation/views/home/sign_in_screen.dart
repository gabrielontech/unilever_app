import 'package:flutter/material.dart';
import 'package:unilever_app/presentation/widgets/widgets_export.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/signIn';

  const SignInScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const SignInScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 190, 25, 0),
        child: Center(
          child: Column(
          children: const [
            Text("Sign IN", style: TextStyle(color : Colors.black, fontSize: 30),),
          ],
            ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:unilever_app/presentation/widgets/widgets_export.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
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
          children: [
            const Image(
              image: AssetImage('assets/images/unileverw.jpg'),
              width: 180,
            ),
            const SizedBox( height: 50,),
            CustomButton(textButton: "SIGN IN", textColor: Colors.white, elevation: true, backgroundColor: Colors.deepPurple[900]), 
            const Padding(
              padding: EdgeInsets.only(top : 45.0),
              child: SeparatorChoice(),
            ),
            const SizedBox(height: 25,),
            Center(child: Text("Sign in with Facebook & Instagram", style: TextStyle(color: Colors.grey[600], fontSize: 16),)),
            const SizedBox(height: 25,),
             CustomButton(textButton: "Sign in with facebook", textColor: Colors.white, elevation: false, backgroundColor: Colors.indigo[500]),
            const SizedBox(height: 25,),
              CustomButton(textButton: "Sign in with Instagram", textColor: Colors.pink[300]!, elevation: false, backgroundColor: Colors.white, borderSide:Colors.pink[300] ,),           
          ],
            ),
        ),
      ),
    );
  }
}

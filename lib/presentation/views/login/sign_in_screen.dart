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
        padding: const EdgeInsets.fromLTRB(25, 150, 25, 0),
        child: Center(
          child: ListView(
            children: [
              Column(
              children: [
                const Text(
                  "Sign In",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
               const SizedBox(height: 120),
               const InputLogin(textField: "Email : ",),          
               const SizedBox(height: 30),
               const InputLogin(textField: "Password : ",),
               const SizedBox(height: 20),
                 Row(
                  children: [
                    const Spacer(),
                    Text("Forgotten password ?", style: TextStyle(color: Colors.deepPurple[900], fontSize: 15),),
                  ],
                ),
                 const SizedBox(height: 40),
                CustomButton(routeName: '/welcome',textButton: 'Sign In', textColor: Colors.white, elevation: true, backgroundColor: Colors.deepPurple[900]),
                const SizedBox(height: 30,),
                const SeparatorChoice(),
                const SizedBox(height: 30,),
                 CustomButton(textButton: 'Log In with Instagram/Facebook', textColor: Colors.blue[700]!, elevation: false, backgroundColor: Colors.white, borderSide : Colors.blue[700])
              ],
            ),
            ]
            ,) 
          ),
        ),
      );
  }
}

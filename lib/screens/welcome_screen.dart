import 'package:chatapp1/screens/registration_screen.dart';
import 'package:chatapp1/screens/signin_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                Text(
                  'MessageMe',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff2e386b)),
                ),
                SizedBox(
                  height: 30,
                ),
                MyButton(
                  color: (Colors.yellow[900]!),
                  onPressed: () {
                    Navigator.pushNamed(context, SiginScreen.screenRoute);
                  },
                  title: 'Sign in',
                ),
                MyButton(
                    color: Colors.blue[800]!,
                    title: 'Register',
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RegistrationScreen.screenRoute);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}

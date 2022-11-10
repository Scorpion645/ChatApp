import 'package:chatapp1/screens/chat_screen.dart';
import 'package:chatapp1/screens/registration_screen.dart';
import 'package:chatapp1/screens/signin_screen.dart';
import 'package:chatapp1/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

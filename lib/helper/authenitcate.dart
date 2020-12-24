import 'package:chat_app/views/signIn.dart';
import 'package:chat_app/views/signUp.dart';
import 'package:flutter/material.dart';

class Authenitcate extends StatefulWidget {
  @override
  _AuthenitcateState createState() => _AuthenitcateState();
}

class _AuthenitcateState extends State<Authenitcate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView);
    } else {
      return SignUp(toggleView);
    }
  }
}

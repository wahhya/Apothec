import 'package:apotech/Content/Log/login-succes.dart';
import 'package:flutter/material.dart';

class LoginSucces extends StatefulWidget {
  const LoginSucces({super.key});

  @override
  State<LoginSucces> createState() => _LoginSuccesState();
}

class _LoginSuccesState extends State<LoginSucces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            ContentLoginSucces(),
          ],
        ),
      ),
    );
  }
}

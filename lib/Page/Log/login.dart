import 'package:apotech/App/AppBar-login.dart';
import 'package:apotech/Content/Log/login-content.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            AppBarLogin(),
            LoginContent(),
          ],
        ),
      ),
    );
  }
}

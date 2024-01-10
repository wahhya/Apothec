import 'package:flutter/material.dart';

class AppBarLogin extends StatefulWidget {
  const AppBarLogin({super.key});

  @override
  State<AppBarLogin> createState() => _AppBarLoginState();
}

class _AppBarLoginState extends State<AppBarLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 50,
                ),
              ),
            ],
          ),
        ));
  }
}

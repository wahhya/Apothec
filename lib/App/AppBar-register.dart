import 'package:flutter/material.dart';

class AppBarRegister extends StatefulWidget {
  const AppBarRegister({super.key});

  @override
  State<AppBarRegister> createState() => _AppBarRegisterState();
}

class _AppBarRegisterState extends State<AppBarRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Icon(
                Icons.arrow_back,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

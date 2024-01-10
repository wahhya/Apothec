import 'package:flutter/material.dart';

class AppBarCart extends StatefulWidget {
  const AppBarCart({super.key});

  @override
  State<AppBarCart> createState() => _AppBarCartState();
}

class _AppBarCartState extends State<AppBarCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Row(
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
              SizedBox(
                width: 30,
              ),
              Text(
                "Your cart",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class AppbarCategory extends StatefulWidget {
  const AppbarCategory({super.key});

  @override
  State<AppbarCategory> createState() => _AppbarCategoryState();
}

class _AppbarCategoryState extends State<AppbarCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
              "Diabetes Care",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

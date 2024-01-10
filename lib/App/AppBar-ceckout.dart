import 'package:flutter/material.dart';

class AppBarCheckout extends StatefulWidget {
  const AppBarCheckout({super.key});

  @override
  State<AppBarCheckout> createState() => _AppBarCheckoutState();
}

class _AppBarCheckoutState extends State<AppBarCheckout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
              width: 20,
            ),
            Text(
              "Checkout",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

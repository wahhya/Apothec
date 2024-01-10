import 'package:flutter/material.dart';

class AppBarVerifyOtp extends StatefulWidget {
  const AppBarVerifyOtp({super.key});

  @override
  State<AppBarVerifyOtp> createState() => _AppBarVerifyOtpState();
}

class _AppBarVerifyOtpState extends State<AppBarVerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      ),
    );
  }
}

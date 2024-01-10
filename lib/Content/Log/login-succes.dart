import 'package:apotech/Page/Log/login.dart';
import 'package:flutter/material.dart';

class ContentLoginSucces extends StatefulWidget {
  const ContentLoginSucces({super.key});

  @override
  State<ContentLoginSucces> createState() => _ContentLoginSuccesState();
}

class _ContentLoginSuccesState extends State<ContentLoginSucces> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("asset/VerifyOtp/img1.png"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Phone Number Verified",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Congradulations, your phone number has been verified. You can start using the app",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "CONTINUE",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xfff4157FF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

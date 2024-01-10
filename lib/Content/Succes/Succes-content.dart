import 'package:apotech/Page/bottombar.dart';

import 'package:flutter/material.dart';

class SuccesContent extends StatefulWidget {
  const SuccesContent({super.key});

  @override
  State<SuccesContent> createState() => _SuccesContentState();
}

class _SuccesContentState extends State<SuccesContent> {
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
              "Thank You",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Your Order will be delivered with invoice #INV20231212. You can track the delivery in the order section.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BottomBar()));
              },
              child: Text(
                "CONTINUE ORDER",
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

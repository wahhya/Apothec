import 'package:apotech/Page/Log/login-succes.dart';
import 'package:flutter/material.dart';

class VerifikasiContent extends StatefulWidget {
  const VerifikasiContent({super.key});

  @override
  State<VerifikasiContent> createState() => _VerifikasiContentState();
}

class _VerifikasiContentState extends State<VerifikasiContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Enter Verify Code",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "We just send you a verification code via phone +62 821 39 488 953",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verifikasi(
                  otp: "0",
                ),
                SizedBox(width: 10),
                verifikasi(
                  otp: "0",
                ),
                SizedBox(width: 10),
                verifikasi(
                  otp: "0",
                ),
                SizedBox(width: 10),
                verifikasi(
                  otp: "0",
                ),
                SizedBox(width: 10),
                verifikasi(
                  otp: "0",
                ),
                SizedBox(width: 10),
                verifikasi(
                  otp: "0",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginSucces()));
                },
                child: Text(
                  "SUBMIT CODE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff4157FF),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "The verify code will expire in 00:59",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
          ),
          Center(
            child: Text(
              "Resend Code",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget verifikasi({required otp}) {
    return Container(
      width: 50,
      height: 50,
      child: Column(
        children: [
          Text(
            "$otp",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

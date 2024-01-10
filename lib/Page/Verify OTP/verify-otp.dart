import 'package:apotech/App/AppBar-otp.dart';
import 'package:apotech/Content/Verifikasi%20Otp/verifikasi-content.dart';
import 'package:flutter/material.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            AppBarVerifyOtp(),
            VerifikasiContent(),
          ],
        ),
      ),
    );
  }
}

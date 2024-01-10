import 'package:apotech/App/AppBar-ceckout.dart';
import 'package:apotech/Content/Chechout/content-checkout.dart';
import 'package:flutter/material.dart';

class Chechout extends StatefulWidget {
  const Chechout({super.key});

  @override
  State<Chechout> createState() => _ChechoutState();
}

class _ChechoutState extends State<Chechout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            AppBarCheckout(),
            ContentCheckout(),
          ],
        ),
      ),
    );
  }
}

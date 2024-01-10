import 'package:apotech/App/AppBar-register.dart';
import 'package:apotech/Content/Register/reg-content.dart';
import 'package:flutter/material.dart';

class PlaceDaftar extends StatefulWidget {
  const PlaceDaftar({super.key});

  @override
  State<PlaceDaftar> createState() => _PlaceDaftarState();
}

class _PlaceDaftarState extends State<PlaceDaftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            AppBarRegister(),
            RegisterContent(),
          ],
        ),
      ),
    );
  }
}

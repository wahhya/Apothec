import 'package:apotech/Content/Home/home-content-bar.dart';
import 'package:apotech/Content/Home/home-content.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            HomeContentBar(),
            HomeContent(),
          ],
        ),
      ),
    );
  }
}

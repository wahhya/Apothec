import 'package:apotech/Content/Succes/Succes-content.dart';
import 'package:flutter/material.dart';

class Succes extends StatefulWidget {
  const Succes({super.key});

  @override
  State<Succes> createState() => _SuccesState();
}

class _SuccesState extends State<Succes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            SuccesContent(),
          ],
        ),
      ),
    );
  }
}

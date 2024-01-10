import 'package:apotech/App/BarApp-Profile.dart';
import 'package:apotech/Content/MyProfile/content-profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            BarProfile(),
            ProfileContent(),
          ],
        ),
      ),
    );
  }
}

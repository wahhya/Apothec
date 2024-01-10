import 'package:apotech/Page/home.dart';
import 'package:apotech/Page/profile.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(BottomBar());
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Botttom(),
    );
  }
}

class Botttom extends StatefulWidget {
  const Botttom({super.key});

  @override
  State<Botttom> createState() => _BotttomState();
}

class _BotttomState extends State<Botttom> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YourExistingBodyWidget(),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        curve: Curves.easeIn,
        backgroundColor: Colors.transparent,
        items: [
          // Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            unselectedColor: Colors.blue,
            selectedColor: Colors.blue,
          ),

          // Notifikasi
          SalomonBottomBarItem(
            icon: Icon(Icons.notifications_outlined),
            title: Text("Notifikasi"),
            selectedColor: Colors.blue,
            unselectedColor: Colors.blue,
          ),

          // Add
          SalomonBottomBarItem(
            icon: Icon(Icons.playlist_add_circle_outlined),
            title: Text("Add"),
            selectedColor: Colors.blue,
            unselectedColor: Colors.blue,
          ),

          // Mall
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_bag),
            title: Text("Mall"),
            selectedColor: Colors.blue,
            unselectedColor: Colors.blue,
          ),

          // Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.account_circle_outlined),
            title: Text("Profile"),
            selectedColor: Colors.blue,
            unselectedColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget YourExistingBodyWidget() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        Home(),
        Profile(),
        Profile(),
        Profile(),
        Profile(),
      ],
    );
  }
}

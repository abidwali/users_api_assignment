import 'package:flutter/material.dart';
import 'users_screen.dart';

import 'dummy_screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItem = 1;
  final _navBarPages = [
    const DummyScreen(pageName: "Home Page"),
    UsersScreen(),
    const DummyScreen(pageName: "Create Page"),
    const DummyScreen(pageName: "Activities Page"),
    const DummyScreen(pageName: "Profile Page"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navBarPages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedItem,
        selectedLabelStyle: const TextStyle(
          color: Color(0XFF7000FF),
        ),
        selectedItemColor: const Color(0XFF7000FF),
        selectedIconTheme: const IconThemeData(
          color: Color(0XFF7000FF),
        ),
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Image.asset("assets/icons/Home.png"),
          ),
          BottomNavigationBarItem(
            label: "People",
            icon: Image.asset("assets/icons/3 User.png"),
          ),
          BottomNavigationBarItem(
            label: "Create",
            icon: Image.asset("assets/icons/Plus.png"),
          ),
          BottomNavigationBarItem(
            label: "Activities",
            icon: Image.asset("assets/icons/Stroke 1.png"),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Image.asset("assets/icons/Profile.png"),
          ),
        ],
        onTap: (value) {
          setState(() {
            _selectedItem = value;
          });
        },
      ),
    );
  }
}

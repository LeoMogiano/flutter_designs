import 'package:flutter/material.dart';
import 'package:music_basic_app/screens/home_pages/home_pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff051227),
      body: PageView(
        onPageChanged: (int page) => setState(() => _currentPage = page),
        children: [
          HomePageOne(currentPage: _currentPage),
          HomePageTwo(currentPage: _currentPage),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shipping_app/presentation/screens/screens.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                
                HomeSlide01(
                  pageController: _pageController,
                ),
                HomeSlide02(
                  pageController: _pageController,
                ),
                HomeSlide03(
                  pageController: _pageController,
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

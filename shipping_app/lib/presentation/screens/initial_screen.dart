import 'package:flutter/material.dart';
import 'package:shipping_app/presentation/screens/screens.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
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
                InitialSlider(
                  pageController: _pageController,
                  image: 'assets/images/bg_01.jpg',
                  title: 'Next-Day\nDelivery',
                  description: 'Get your package delivered the next day, anywhere in the world.',
                  rightSlider: false,
                ),
                InitialSlider(
                  pageController: _pageController,
                  image: 'assets/images/bg_02.jpg',
                  title: 'Same-Day\nDelivery',
                  description: 'Get your package delivered in the same day, same city or country.',
                  rightSlider: false,
                ),
                InitialSlider(
                  pageController: _pageController,
                  image: 'assets/images/bg_03.png',
                  title: 'Stress-Free\nShipping',
                  description: 'Have a package to send? Create a shipment in seconds.',
                  rightSlider: true,
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

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:shipping_app/config/app_colors.dart';
import 'package:shipping_app/config/configs.dart';
import 'package:shipping_app/presentation/widgets/widgets.dart';

class InitialSlider extends StatelessWidget {
  const InitialSlider({
    super.key,
    required this.pageController,
    required this.image,
    required this.title,
    required this.description,
    required this.rightSlider,
  });

  final PageController pageController;
  final String image;
  final String title;
  final String description;
  final bool rightSlider;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundSlider(image: image),

        BodySlider(
          pageController: pageController, 
          title: title, 
          description: description, 
          rightSlider: rightSlider
        ),
      ],
    );
  }
}

class BackgroundSlider extends StatelessWidget {
  const BackgroundSlider({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: -200,
      right: 0,
      bottom: 0,
      child: ColorFiltered(
       colorFilter: const ColorFilter.matrix([
          0.2126, 0.7152, 0.0722, 0, 0,
          0.2126, 0.7152, 0.0722, 0, 0,
          0.2126, 0.7152, 0.0722, 0, 0,
          0, 0, 0, 1, 0,
        ]),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.0, 0.15), 
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class BodySlider extends StatelessWidget {
  const BodySlider({
    super.key,
    required this.pageController,
    required this.title,
    required this.description,
    required this.rightSlider,
  });

  final PageController pageController;
  final String title;
  final String description;
  final bool rightSlider;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: AppColors.green,
                dotColor: AppColors.grey,
                dotHeight: 12,
                dotWidth: 12,
                spacing: 4,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 64,
                height: 1.2,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 20),
            if (rightSlider)
            BottomSlider(
              onPressed: _previousPage
            ),
          ],
        ),
      ),
    );
  }

  void _previousPage() {
    int previousPage = pageController.page!.toInt() - 1;
    if (previousPage < 0) return;
    pageController.animateToPage(
      previousPage,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

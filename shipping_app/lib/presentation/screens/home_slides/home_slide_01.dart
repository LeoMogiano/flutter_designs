import 'package:flutter/material.dart';
import 'package:shipping_app/config/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlide01 extends StatelessWidget {
  const HomeSlide01({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        
        Positioned(
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
                  'assets/images/bg_02.png',
                  fit: BoxFit.fitHeight,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.0, 0.15), 
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55,
                  left: MediaQuery.of(context).size.height * 0.015
                ),
                child: SmoothPageIndicator(
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
              ),
              Text(
                'Stress-Free\nshipping',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.08,
                  color: Colors.white,
                ),
              ),
              Text(
                'Have a package to send? Create a shipment in seconds',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.018,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

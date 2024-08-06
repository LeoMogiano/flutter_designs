import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'package:shipping_app/config/configs.dart';
import 'package:shipping_app/presentation/screens/screens.dart';

class BottomSlider extends StatelessWidget {
  const BottomSlider({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.lightDark,
            padding: const EdgeInsets.all(30),
            shape: const CircleBorder(),
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 5),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
        Flexible(
            child: SlideAction(
          height: 80,
          elevation: 0,
          alignment: Alignment.center,
          sliderButtonIconPadding: 22,
          innerColor: AppColors.green,
          outerColor: AppColors.lightDark,
          sliderRotate: true,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w100,
          ),
          sliderButtonIcon: const Icon(
            Icons.local_shipping_outlined,
            size: 24,
            color: Colors.white,
          ),
          submittedIcon: const Icon(Icons.check, color: Colors.white),
          animationDuration: const Duration(milliseconds: 500),
          onSubmit: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
            return null;
          },
          child: Container(
            margin: const EdgeInsets.only(
              left: 95,
              right: 25,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Icon(
                  Icons.keyboard_double_arrow_right_outlined,
                  color: Colors.white,
                  size: 38,
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}

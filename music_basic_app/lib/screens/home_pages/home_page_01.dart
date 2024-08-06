import 'package:flutter/material.dart';
import 'package:music_basic_app/widgets/widgets.dart';

class HomePageOne extends StatelessWidget {
  const HomePageOne({
    super.key,
    required int currentPage,
  }) : _currentPage = currentPage;

  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.62,
          alignment: Alignment.center,
          color: const Color(0XFFE38C8B),
          child: const Text(
            'Page 1',
            style: TextStyle(
              fontSize: 40,
              color: Color(0xff051227),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: const Color(0xff051227),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  const Text(
                    'Listening is \nis everything',
                    style: TextStyle(
                        fontSize: 34,
                        color: Color(0XFFE38C8B),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Millions of songs and podcasts.\nNo credit card needed.',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0XFFE38C8B),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    color: const Color(0xff051227),
                    child: Row(
                      children: [
                        for (int i = 0; i < 4; i++)
                          DotPage(
                            color: i == _currentPage
                                ? const Color(0XFFE38C8B)
                                : Colors.grey,
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

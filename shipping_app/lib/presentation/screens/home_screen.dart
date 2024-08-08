import 'package:flutter/material.dart';

import 'package:shipping_app/config/configs.dart';
import 'package:shipping_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> events = [
      'Picked',
      'Delivery',
      'Delivered',
    ];

    const int processIndex = 2;

    return  Scaffold(
      backgroundColor: AppColors.dark,
      body: SafeArea(
        bottom: false,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(
                          'assets/images/profile_01.jpg',
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        CircularButton(
                          backgroundColor: AppColors.lightDark,
                          icon: Icons.add,
                          onTap: () {},
                        ),
                        const SizedBox(width: 10),
                        Stack(
                          children: [
                            CircularButton(
                              backgroundColor: AppColors.lightDark,
                              icon: Icons.notifications,
                              onTap: () {},
                            ),
                            Positioned(
                              right: 0,
                              top: 2,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Recently Shipping',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 64,
                    height: 1.1,
                    fontWeight: FontWeight.w300
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    fillColor: AppColors.lightDark,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                for (int i = 0; i < 3; i++)
                ShippingWidget(
                  events: events, 
                  processIndex: processIndex
                )
              
              ],
            ),
          ),
        ),
      )
    );
  }
}

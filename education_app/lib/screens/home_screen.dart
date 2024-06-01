import 'package:education_app/screens/education_screens.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils.dart/utils.dart';
import 'package:education_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: SizedBox(
          width: screenWidth * 0.90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const UserPhoto(),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 18,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Connect to Class',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: screenWidth * 0.90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text(
                   'Nice streak,\n Leo',
                   style: TextStyle(
                     height: 1.3,
                     fontSize: 40,
                     color: AppColors.blackText,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EduInfo(
                    color: AppColors.yellow,
                    color2: AppColors.yellowDark,
                    text: 'Days\n in training',
                    count: '255',
                    streak: '24 days in a row',
                  ),
                  EduInfo(
                    color: AppColors.green,
                    color2: AppColors.greenDark,
                    text: 'Completed\n courses',
                    count: '12',
                    streak: '2 in this month',
                  ),
                ],
              ),
              const SizedBox(height: 26),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFf6f6f6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Today classes',
                          style: TextStyle(
                            fontSize: 22,
                            color: AppColors.blackText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ClassesScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: AppColors.blackText,
                            ),
                          ),
                        ),
                      ],
                    ), 
                    const Column(
                      children: [
                        ClassInfo(
                          title: 'Design system in Figma',
                          subtitle: 'On going - Leo M.',
                          icon: Icons.design_services,
                          color: AppColors.green,
                          iconColor: AppColors.greenDark,
                        ),
                         ClassInfo(
                          title: 'Development with Flutter',
                          subtitle: '2:00 PM - Leo M.',
                          icon: Icons.calculate,
                          color: AppColors.purple,
                          iconColor: AppColors.purpleDark,
                         ),
                      ],
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(
        selectedIndex: 0,
      ),
    );
  }
}

import 'package:education_app/utils.dart/utils.dart';
import 'package:flutter/material.dart';
import 'package:education_app/widgets/widgets.dart';

class ClassesScreen extends StatelessWidget {
  const ClassesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Planning',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 40,
                  color: AppColors.blackText,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              Text(
                'May 22, Monday',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 20,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PeriodOption(
                    period: 'Today',
                    isSelected: true,
                  ),
                  PeriodOption(
                    period: 'This week',
                    isSelected: false,
                  ),
                  PeriodOption(
                    period: 'Next week',
                    isSelected: false,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Expanded(
                child: SingleChildScrollView(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          for (var i = 0; i < 10; i++)
                            PeriodTime(
                              time: "${8 + i}:00 AM",
                            ),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      const Column(
                        children: [  
                          PlanningInfo(
                            title: 'Design with Figma',
                            subtitle: 'Details of the design process',
                            icon: Icons.check,
                            color: AppColors.green,
                            iconColor: AppColors.greenDark,
                          ),
                          PlanningInfo(
                            title: 'Development with Flutter',
                            subtitle: 'Starting with essential widgets',
                            icon: Icons.hourglass_empty,
                            color: AppColors.purple,
                            iconColor: AppColors.purpleDark,
                          ),
                        ],
                      ), 
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(
        selectedIndex: 1,
      ),
    );
  }
}

class PeriodTime extends StatelessWidget {
  const PeriodTime({
    super.key,
    required this.time
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Text( 
        time,
        style: TextStyle(
          height: 1.3,
          fontSize: 13,
          color: Colors.grey[500],
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:education_app/utils.dart/utils.dart';
import 'package:education_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

              const SizedBox(height: 30),

              Container(
                height: screenHeight * 0.35,
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
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: AppColors.blackText,
                            ),
                          ),
                        ),
                      ],
                    ),
                    

                    Column(
                      
                      children: [
                        
                        Container(
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.1,
                          margin: const EdgeInsetsDirectional.only(top: 10),
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 10,
                                    ),
                                    width: screenWidth * 0.6,
                                    height: screenHeight * 0.07,
                                    
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Design System in Flutter',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 16,
                                              
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'On going - Leo M.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.5,
                                              
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    
                                    decoration: const BoxDecoration(
                                      color: AppColors.greenDark,
                                      shape: BoxShape.circle
                                    ),
                                    child: const Icon(
                                      Icons.design_services,
                                      color: Colors.black,
                                    ),
                                    
                                  )
                                  
                                ],
                              )
                            ],
                          )
                        ),
                    
                        Container(
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.1,
                          margin: const EdgeInsetsDirectional.only(top: 10),
                          decoration: BoxDecoration(
                            color: AppColors.purple,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 10,
                                    ),
                                    width: screenWidth * 0.6,
                                    height: screenHeight * 0.07,
                                    
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Developing with Dart',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 16,
                                              
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '2:00 PM - Leo M.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.5,
                                              
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    
                                    decoration: const BoxDecoration(
                                      color: AppColors.purpleDark,
                                      shape: BoxShape.circle
                                    ),
                                    child: const Icon(
                                      Icons.logo_dev,
                                      color: Colors.black,
                                    
                                    ),
                                    
                                  )
                                  
                                ],
                              )
                            ],
                          )
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
    );
  }
}

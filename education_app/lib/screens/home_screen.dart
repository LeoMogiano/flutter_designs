import 'package:flutter/material.dart';
import 'package:education_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
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
          width: MediaQuery.of(context).size.width * 0.90,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                   'Nice streak,\n Leo',
                   style: TextStyle(
                     height: 1.3,
                     fontSize: 40,
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                ],
              ),
              SizedBox(height: 30),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EduInfo(
                    color: Color(0xFFF8E9C8),
                    color2: Color(0xFFE8DAB2),
                    text: 'Days\n in training',
                    count: '255',
                    streak: '24 days in a row',
                  ),
                  EduInfo(
                    color: Color(0xFFDEECEC),
                    color2: Color(0xFFC7D8E3),
                    text: 'Completed\n courses',
                    count: '12',
                    streak: '2 in this month',
                  ),
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

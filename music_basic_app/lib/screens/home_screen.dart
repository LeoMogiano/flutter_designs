import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Column(
      
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.62,
            alignment: Alignment.center,
            color: const Color(0XFFE38C8B),
            child: Stack(
              children: [
                Positioned(
                  bottom:100,
                  right: 80,
                  child: Transform.rotate(
                    angle: 2 * 3.14159 / 3,
                    child: const Icon(
                      Icons.change_history,
                      size: 300,
                      color: Color(0xff051227),
                    ),
                  ),
                ),
                const Positioned(
                  right: 80,
                  bottom: 250,
                  child: Icon(
                    Icons.circle,
                    size: 200,
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                  bottom: 320,
                  right: 30,
                  child: const Icon(
                    Icons.energy_savings_leaf_rounded,
                    size: 60,
                    color: Color(0xff051227),
                  ),
                ),
              ],
            ),
          ),
      
          Expanded(
            child: Container(
              color:const Color(0xff051227),
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 
                 
                  children: [
                    const SizedBox(height: 60),
                    const Text(
                      'Listenning is \nis everything',
                      style: TextStyle(
                        fontSize: 34,
                        color: Color(0XFFE38C8B),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Millions of songs and podcasts.\nNo credit card needed.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0XFFE38C8B),
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      color: const Color(0xff051227),
                      child: Row(
                        children: [
                          for (int i = 0; i < 4; i++)
                            DotPage(
                              color: i == 1 ? const Color(0XFFE38C8B) : Colors.grey,
                            ),
                        ],
                      ),
                    )
                    
                  ],
                ),
              ),
            ),
          ),

          // DOTS PAGE

          


        ],
      ),
    );
  }
}

class DotPage extends StatelessWidget {
  const DotPage({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 10,
          width: 10,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        );
  }
}
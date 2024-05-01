import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // width and height of the screen
    final phoneWidth = MediaQuery.of(context).size.width;
    final phoneHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Hello ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
                children: [
                  TextSpan(
                      text: 'Bankly',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(width: phoneWidth * 0.25),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromARGB(255, 189, 189, 189),
                        width: 1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Icon(Icons.notifications_none_outlined,
                        size: 30, color: Colors.black),
                  ),
                ),
                SizedBox(width: phoneWidth * 0.02),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromARGB(255, 189, 189, 189),
                        width: 1),
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://www.wonderwall.com/wp-content/uploads/sites/2/2024/01/shutterstock_editorial_14008752c.jpg?w=700',
                      fit: BoxFit.cover,
                      width: phoneWidth * 0.12,
                      height: phoneWidth * 0.12,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: phoneHeight * 0.02),
            SizedBox(
              height: phoneHeight * 0.80,
              child: Stack(
                children: [
                  Positioned(
                    top: phoneHeight * 0.12,
                    child: Container(
                      width: phoneWidth * 0.9,
                      height: phoneHeight * 0.22,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.black,
                      ),
                      child: const Icon(Icons.more_horiz,
                          size: 30, color: Colors.black),
                    ),
                  ),
                  Container(
                    width: phoneWidth * 0.9,
                    height: phoneHeight * 0.22,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3FB0F),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(children: [
                      SizedBox(height: phoneHeight * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: phoneWidth * 0.3,
                            child: Stack(
                              children: [
                                Container(
                                  width: phoneWidth * 0.1,
                                  height: phoneWidth * 0.1,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors
                                        .red, // Cambia esto al primer color que quieras
                                  ),
                                ),
                                Positioned(
                                  left: phoneWidth * 0.05,
                                  child: Container(
                                    width: phoneWidth * 0.1,
                                    height: phoneWidth * 0.1,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors
                                          .orange, // Cambia esto al segundo color que quieras
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: phoneWidth * 0.02),
                          Row(
                            children: [
                              const Icon(Icons.account_balance_outlined,
                                  size: 30, color: Colors.black),
                              SizedBox(width: phoneWidth * 0.01),
                              const Text("DS Bank",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: phoneHeight * 0.038),
                      Row(
                        children: [
                          SizedBox(width: phoneWidth * 0.08),
                          Text("Balance",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600])),
                          SizedBox(width: phoneWidth * 0.01),
                          Icon(Icons.remove_red_eye_outlined,
                              size: 20, color: Colors.grey[600]),
                        ],
                      ),
                      SizedBox(height: phoneHeight * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("\$ 24,000.98",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                  letterSpacing: -1.0)),
                          SizedBox(width: phoneWidth * 0.1),
                          const Text("VISA",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                  letterSpacing: -1.0)),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

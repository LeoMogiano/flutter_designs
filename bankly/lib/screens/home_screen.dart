import 'package:bankly/screens/balance_screen.dart';
import 'package:bankly/widgets/widgets.dart';
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
        title: Container(
          margin:  EdgeInsets.symmetric(horizontal: phoneWidth * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        text: 'Leo',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              
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
                  ProfilePhoto(
                    width: phoneWidth * 0.12,
                    height: phoneWidth * 0.12,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: phoneHeight * 0.02),
            SizedBox(
              height: phoneHeight * 0.40,
              child: Stack(
                children: [
                  SendMoney(phoneHeight: phoneHeight, phoneWidth: phoneWidth),
                  CreditCard(phoneWidth: phoneWidth, phoneHeight: phoneHeight),
                ],
              ),
            ),
            Container(
              height: phoneHeight * 0.105,
              width: phoneWidth * 0.9,
              decoration: const BoxDecoration(
                border: BorderDirectional(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 224, 224, 224),
                    width: 2,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Amount",
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: -0.4,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
                  ),
                  SizedBox(height: phoneHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("500.00 USD",
                        style: TextStyle(
                          fontSize: 24,
                          letterSpacing: -0.4,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const BalanceScreen()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3FB0F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: phoneWidth * 0.18,
                          height: phoneHeight * 0.05,
                          child: const Icon(Icons.arrow_forward, size: 30, color: Colors.black),
                        ),
                      ),
                    ],
                  ), 
                ],
              )
            ),

            SizedBox(height: phoneHeight * 0.02),

            SizedBox(
              height: phoneHeight * 0.24,
              width: phoneWidth * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Transactions",
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: -0.4,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)
                      ),
                      SizedBox(width: phoneWidth * 0.02),
                      Text("View All",
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: -0.4,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600])
                      ),
                    ],
                  ),
                  SizedBox(height: phoneHeight * 0.02),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TransactionCard(phoneWidth: phoneWidth, phoneHeight: phoneHeight),
                        TransactionCard(phoneWidth: phoneWidth, phoneHeight: phoneHeight,
                          labelColor: const Color.fromARGB(255, 252, 228, 236),
                          iconText: "🛍️",
                          label: "Shopping",
                          amount: "\$ 600.00",
                        ),
                        TransactionCard(phoneWidth: phoneWidth, phoneHeight: phoneHeight,
                          labelColor: const Color.fromARGB(255, 232, 245, 233),
                          iconText: "🥦",
                          label: "Grocery",
                          amount: "\$ 300.00",
                        ),
                        TransactionCard(phoneWidth: phoneWidth, phoneHeight: phoneHeight)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

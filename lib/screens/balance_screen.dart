import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneWidth = MediaQuery.of(context).size.width;
    final phoneHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          title: SizedBox(
            width: phoneWidth * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cloud_sync,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
            child: Column(
          children: [
            BalanceWidget(phoneWidth: phoneWidth),
            SizedBox(height: phoneHeight * 0.1),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 40),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total sent',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.4,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "View all",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              letterSpacing: -0.4,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SavingsExpenses(phoneWidth: phoneWidth, phoneHeight: phoneHeight)
                  ],
                ),
              ),
            )
          ],
        )));
  }
}

class SavingsExpenses extends StatelessWidget {
  const SavingsExpenses({
    super.key,
    required this.phoneWidth,
    required this.phoneHeight,
  });

  final double phoneWidth;
  final double phoneHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: phoneWidth * 0.495,
                height: phoneHeight * 0.055,
                decoration: const BoxDecoration(
                  color: Color(0xFFE3FB0F),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: const Center(
                    child: Text("Savings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)))),
            Container(
                width: phoneWidth * 0.495,
                height: phoneHeight * 0.055,
                decoration: const BoxDecoration(
                  color: Color(0XFFC9C3F5),
                  borderRadius:
                      BorderRadius.all(Radius.circular(5)),
                ),
                child: const Center(
                    child: Text("Expenses",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)))),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: phoneWidth * 0.495,
            height: phoneHeight * 0.005,
            decoration: const BoxDecoration(
              color: Color(0xFFE3FB0F),
              borderRadius: BorderRadius.only(),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFFE3FB0F),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
            ),
          ),
          height: phoneHeight * 0.2,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [],
          ),
        ),
      ],
    );
  }
}

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
    required this.phoneWidth,
  });

  final double phoneWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Balance',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.4,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(
          width: phoneWidth * 0.55,
          child: const Stack(
            children: [
              Text(
                '\$ 23,54.00',
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -2,
                    color: Colors.black),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Icon(Icons.arrow_circle_up_sharp, size: 24),
              ),
            ],
          ),
        )
      ],
    );
  }
}

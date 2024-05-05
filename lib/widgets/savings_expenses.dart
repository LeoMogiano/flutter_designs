
import 'package:bankly/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SavingsExpenses extends StatefulWidget {
  const SavingsExpenses({
    super.key,
    required this.phoneWidth,
    required this.phoneHeight, 
  });

  final double phoneWidth;
  final double phoneHeight;
  

  @override
  State<SavingsExpenses> createState() => _SavingsExpensesState();
}

class _SavingsExpensesState extends State<SavingsExpenses> {
  bool changeBalOption = false;
 
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() => changeBalOption = !changeBalOption);
              },
              child: Container(
                width: widget.phoneWidth * 0.495,
                height: widget.phoneHeight * 0.055,
                decoration: BoxDecoration(
                  color: const Color(0xFFE3FB0F),
                  borderRadius: (changeBalOption)
                    ? const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    )
                    : const BorderRadius.all(Radius.circular(5)
                
                  ),
                ),
                child: const Center(
                    child: Text("Savings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)))
                ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => changeBalOption = !changeBalOption);
              },
              child: Container(
                  width: widget.phoneWidth * 0.495,
                  height: widget.phoneHeight * 0.055,
                  decoration: BoxDecoration(
                    color: const Color(0XFFC9C3F5),
                    borderRadius:(changeBalOption)
                      ? const BorderRadius.all(Radius.circular(5))
                      : const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                  )),
                  child: const Center(
                      child: Text("Expenses",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)))),
            ),
          ],
        ),
        Align(
          alignment: (changeBalOption)
            ? Alignment.centerLeft
            : Alignment.centerRight,
          child: Container(
            width: widget.phoneWidth * 0.495,
            height: widget.phoneHeight * 0.005,
            decoration: BoxDecoration(
              color: (changeBalOption)
                ? const Color(0xFFE3FB0F)
                : const Color(0XFFC9C3F5),
              borderRadius: const BorderRadius.only(),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: (changeBalOption)
              ? const Color(0xFFE3FB0F)
              : const Color(0XFFC9C3F5),  
          ),
          height: widget.phoneHeight * 0.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 2.20,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                        left: 12,
                        top: 20,
                        bottom: 12,
                      ),
                      child: CustomLinechart(
                        changeBalOption: changeBalOption, 
                      )
                    ),
                  ),
                
                ],
              )
  
            ],
          ),
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';

import 'package:shipping_app/config/configs.dart';
import 'package:shipping_app/presentation/widgets/widgets.dart';

class ShippingWidget extends StatelessWidget {
  const ShippingWidget({
    super.key,
    required this.events,
    required this.processIndex,
  });

  final List<String> events;
  final int processIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightDark,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            child:const Text(
              "Transit",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.2,
                letterSpacing: -0.2,
                fontWeight: FontWeight.bold,
              ),
            )
          ),
          const SizedBox(height: 12),
          const Text(
            'E-F48HMOGI',
            style: TextStyle(
              color: Colors.white,
              fontSize: 29,
              fontWeight: FontWeight.w300
            ),
          ),
          const SizedBox(height: 20),
    
          ProcessTimeline(
            processes: events,
            processIndex: processIndex,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  
                  const Text(
                    'Friday Jun 30, 2024',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: -0.5,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Estimated',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  const Text(
                    'Friday Jul 02, 2024',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: -0.5,
                    ),
                  ),
                ],
              )
            ],
          )
          
    
        ],
      ),
    );
  }
}

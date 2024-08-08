import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import 'package:shipping_app/config/configs.dart';

class ProcessTimeline extends StatelessWidget {
  const ProcessTimeline({
    super.key, 
    required this.processIndex, 
    required this.processes,
  });

  final int processIndex;
  final List<String> processes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.0365,
          child: IntrinsicWidth(
            child: FixedTimeline.tileBuilder(
                theme: TimelineTheme.of(context).copyWith(
                  direction: Axis.horizontal,
                  indicatorPosition: 0,
                  nodePosition: 0,
                ),
                builder: TimelineTileBuilder.connected(
                  indicatorBuilder: (_, index) {
                      return  Column(
                        children: [
                          OutlinedDotIndicator(
                            color: Colors.white,
                            borderWidth: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                color: (index < processIndex) ? AppColors.green : AppColors.lightDark,
                                border: Border.all(
                                  color: AppColors.lightDark,
                                  width: 2,
                                ),
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(6),
                            ),
                          ),
                        ],
                      );
                  },
                  connectorBuilder: (_, index, type) {
                    return SizedBox(
                     width: MediaQuery.of(context).size.width * 0.59 / (processes.length - 1),
                      child: const DashedLineConnector(
                        color: AppColors.green,
                        dash: 3,
                        thickness: 1.4,
                      ),
                    );
                  },
                  itemCount: processes.length,
                )),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var i = 0; i < processes.length; i++)
          Text(
            processes[i],
            style: TextStyle(
              color: (i <= processIndex) ? AppColors.green : AppColors.lightDark,
              fontWeight: FontWeight.bold,
            ),
          ),
          ],
        )
      ],
    );
  }
}

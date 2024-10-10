
import 'package:flutter/material.dart';
import 'package:fragancefl_app/utils/utils.dart';

class FraganceWidget extends StatelessWidget {

  const FraganceWidget({
    super.key, 
    required this.image, 
    required this.name, 
    required this.price, 
    required this.type,
  });

  final String image;
  final String name;
  final double price;
  final String type;

  static const double _borderRadius = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      margin: const EdgeInsets.only(right: 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(_borderRadius),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(_borderRadius),
              topRight: Radius.circular(_borderRadius),
            ),
            child: Image.asset(
              image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 6,
            ),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      type,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Price',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                     formatPrice(price),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}

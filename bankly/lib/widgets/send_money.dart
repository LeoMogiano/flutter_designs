
import 'package:flutter/material.dart';
import 'package:bankly/widgets/widgets.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({
    super.key,
    required this.phoneHeight,
    required this.phoneWidth,
  });

  final double phoneHeight;
  final double phoneWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: phoneHeight * 0.14,
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
        child: Container(
          margin: EdgeInsets.only(left: phoneWidth * 0.05, top: phoneHeight * 0.1),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const Text("Send Money To",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)
                  ),
                  SizedBox(height: phoneHeight * 0.01),
                 
                  SizedBox(
                    width: phoneWidth * 0.5,
                    child: Stack(
                      children: [
                        ProfilePhoto(
                          width: phoneWidth * 0.11, 
                          height: phoneWidth * 0.11,
                          color: Colors.black
                        ),
                        Positioned(
                          left: phoneWidth * 0.1,
                          child: ProfilePhoto(
                            urlPhoto: 'https://i.pinimg.com/736x/89/6b/7a/896b7a17e7fa73220e72955e23588451.jpg',
                            width: phoneWidth * 0.11, 
                            height: phoneWidth * 0.11,
                            color: Colors.black
                          )
                        ),
                        Positioned(
                          left: phoneWidth * (0.1 * 2) ,
                          child: ProfilePhoto(
                            urlPhoto: 'https://i.pinimg.com/736x/a7/02/94/a70294d7010183c7e42016703aae2c1a.jpg',
                            width: phoneWidth * 0.11, 
                            height: phoneWidth * 0.11,
                            color: Colors.black
                          )
                        ),
                        Positioned(
                          left: phoneWidth * (0.1 * 3) ,
                          child: ProfilePhoto(
                            urlPhoto: 'https://lh4.googleusercontent.com/proxy/GNaiD2g5zHf81k9Q5azpPZwgnpfRvULOIuyArt_2bsA7NCph2_DRJEatxeP7nN-yLJk1dTx8l45UKuwhEl8vTm6ddejRKr8RbJjdIIyooqikXn07zXuuFbP0gMyFZA',
                            width: phoneWidth * 0.11, 
                            height: phoneWidth * 0.11,
                            color: Colors.black
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
    
              Container(
                decoration: BoxDecoration(
                  color: const Color(0XFFC9C3F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(right: phoneWidth * 0.05),
                width: phoneWidth * 0.15,
                height: phoneHeight * 0.09,
                
                child: const Icon(Icons.search, size: 30, color: Colors.black,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


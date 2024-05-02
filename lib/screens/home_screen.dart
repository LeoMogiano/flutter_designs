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
              height: phoneHeight * 0.80,
              child: Stack(
                children: [
                  Positioned(
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
                  ),
                  CreditCard(phoneWidth: phoneWidth, phoneHeight: phoneHeight),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
    required this.width,
    required this.height, 
    this.color = const Color.fromARGB(255, 189, 189, 189),
    this.urlPhoto =  'https://www.wonderwall.com/wp-content/uploads/sites/2/2024/01/shutterstock_editorial_14008752c.jpg?w=700',
  });

  final double width;
  final double height;
  final Color color;
  final String urlPhoto;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: 1),
      ),
      child: ClipOval(
        child: Image.network(
          urlPhoto,
          fit: BoxFit.cover,
          width: width,
          height: height
        ),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
    required this.phoneWidth,
    required this.phoneHeight,
  });

  final double phoneWidth;
  final double phoneHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                const Icon(Icons.account_balance_outlined, size: 30, color: Colors.black),
                SizedBox(width: phoneWidth * 0.01),
                const Text("DS Bank",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  )
                ),
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
    );
  }
}

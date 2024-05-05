import 'package:bankly/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => BalanceScreenState();
}

class BalanceScreenState extends State<BalanceScreen> {

  List<String> names = ['Leo Mogiano', 'Ana de Armas', 'Tayler Durden','Brad Pitt','Tobey Maguire'];
  List<String> dates = ['27 June 2023', '01 July 2023', '15 July 2023', '20 July 2023', '25 July 2023'];
  List<String> amounts = ['\$ 350.00', '\$ 150.00', '\$ 250.00', '\$ 450.00', '\$ 550.00'];
  List<String> photos = [
    'https://avatars.githubusercontent.com/u/91585994?v=4',
    'https://images.hellomagazine.com/horizon/square/793fdaf56e0a-ana-de-armas-relationship-t.jpg',
    'https://i.pinimg.com/736x/a7/02/94/a70294d7010183c7e42016703aae2c1a.jpg',
    'https://i.pinimg.com/736x/89/6b/7a/896b7a17e7fa73220e72955e23588451.jpg',
    'https://lh4.googleusercontent.com/proxy/GNaiD2g5zHf81k9Q5azpPZwgnpfRvULOIuyArt_2bsA7NCph2_DRJEatxeP7nN-yLJk1dTx8l45UKuwhEl8vTm6ddejRKr8RbJjdIIyooqikXn07zXuuFbP0gMyFZA',
  ];
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
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
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
                        SizedBox(height: phoneHeight * 0.015),
                        // 
                        SingleChildScrollView(
                          child: SizedBox(
                            height: phoneHeight * 0.3,
                            child:ListView.builder(
                            shrinkWrap: true,
                            itemCount: names.length,
                            itemBuilder: (context, index) {
                              return BalanceDetail(
                                phoneWidth: phoneWidth,
                                phoneHeight: phoneHeight,
                                name: names[index],
                                date: dates[index],
                                amount: amounts[index],
                                url: photos[index],
                              );
                            },
                          ),
                          ),
                        ),
                        
                      ],
                    ),
                    
                    SavingsExpenses(
                      phoneWidth: phoneWidth, 
                      phoneHeight: phoneHeight,
                    )
                  ],
                ),
              ),
            )
          ],
        )));
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
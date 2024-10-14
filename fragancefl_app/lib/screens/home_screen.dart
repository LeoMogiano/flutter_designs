import 'package:flutter/material.dart';
import 'package:fragancefl_app/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  final List<String> tabs = ['All', 'Popular', 'Man', 'Woman'];

  void _onTabSelected(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  child: TextFormField(
                    cursorColor:Colors.black,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(20, 12.5, 20, 12.5),
                      prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(tabs.length, (index) {
                    return GestureDetector(
                      onTap: () => _onTabSelected(index),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        height: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              tabs[index],
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            if (_selectedIndex == index)
                              Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const CustomSubtitle(
                    primaryText: 'Popular',
                    secondaryText: 'Collection',
                    margin: EdgeInsets.only(bottom: 24),
                  ),
                  
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    child: Row(
                      children: [
                        for (int i = 0; i < 4; i++)
                           const FraganceWidget(
                            image: 'assets/images/sauvage.png',
                            name: 'Sauvage',
                            type: 'Eau de Parfum',
                            price: 120,
                           ),
                      ],
                    ),
                  ),

                  const CustomSubtitle(
                    primaryText: 'Recommended',
                    secondaryText: 'Collection',
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Column(
                        children: [
                          for (int i = 0; i < 4; i++)
                            const ItemWidget(
                              image: 'assets/images/sauvage.png',
                              name: 'Sauvage',
                              price: 120,
                              type: 'Eau de Toilette',
                              volume: 100,
                            )
                        ],
                      ),
                    ),
                  )
                  

                ],
              )
            ),
          )
        ],
      )
    );
  }
}



class CustomSubtitle extends StatelessWidget {
  const CustomSubtitle({
    super.key,
    required this.primaryText,
    required this.secondaryText,
    required this.margin,
  });

  final String primaryText;
  final String secondaryText;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: RichText(
        text: TextSpan(
          text: primaryText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
            fontFamily: GoogleFonts.cormorant().fontFamily
          ),
          children: [
            TextSpan(
              text: ' $secondaryText',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
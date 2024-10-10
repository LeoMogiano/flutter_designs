import 'package:flutter/material.dart';
import 'package:fragancefl_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<String> tabs = ['All', 'Popular', 'Man', 'Woman'];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
                children:[
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[600],
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 12.5, 20, 12.5),
                        prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                      cursorColor:
                          Colors.black, // Cambia el color del cursor a negro
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(tabs.length, (index) {
                      return GestureDetector(
                        onTap: () => _onTabSelected(index),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Text(
                                tabs[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height:5), 
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
        
            // 4 tabs
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.7,
            //   color: Colors.red,
            //   child: DefaultTabController(
            //     length: 4,
            //     child: Column(
            //       children: [
            //         const TabBar(
            //           labelColor: Colors.white,
            //           unselectedLabelColor: Colors.grey,
            //           indicatorColor: Colors.white,
            //           dividerColor: Colors.transparent,
            //           tabs: [
            //             Tab(text: 'All'),
            //             Tab(text: 'Popular'),
            //             Tab(text: 'Men'),
            //             Tab(text: 'Women'),
            //           ],
            //         ),
            //         Container(
            //           decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //           height: 300,
            //           child: TabBarView(
            //             children: [
            //                Container(
            //                 color: Colors.transparent,
            //               ),
            //                Container(
            //                 color: const Color.fromARGB(0, 70, 55, 55),
            //               ),
            //                Container(
            //                 color: Colors.transparent,
            //               ),
            //               Container(
            //                 color: Colors.transparent,
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
        
            // 4 tabs custom con un palito blanco debajo
        
            Expanded(
              child: Container(
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

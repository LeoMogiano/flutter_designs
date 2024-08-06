import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:shipping_app/config/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlide03 extends StatelessWidget {
  const HomeSlide03({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Positioned(
          top: 0,
          left: -200,
          right: 0,
          bottom: 0,
          child: ColorFiltered(
           colorFilter: const ColorFilter.matrix([
              0.2126, 0.7152, 0.0722, 0, 0,
              0.2126, 0.7152, 0.0722, 0, 0,
              0.2126, 0.7152, 0.0722, 0, 0,
              0, 0, 0, 1, 0,
            ]),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/bg_02.png',
                  fit: BoxFit.fitHeight,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.0, 0.15), 
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        SafeArea(
          child: Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.015
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.55,
                  ),
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: AppColors.green,
                      dotColor: AppColors.grey,
                      dotHeight: 12,
                      dotWidth: 12,
                      spacing: 4,
                    ),
                  ),
                ),
                Text(
                  'Stress-Free\nShipping',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.08,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Have a package to send? Create a shipment in seconds',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.lightDark,
                        padding: const EdgeInsets.all(20),
                        shape: const CircleBorder(),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),

                     const Expanded(
                      
                      child: SlideAction(
                        height: 60,
                        alignment: Alignment.center,
                        sliderButtonIconPadding: 14,
                        innerColor: AppColors.green,
                        outerColor: AppColors.lightDark,
                        sliderRotate: false,
                        text: 'Start',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                        sliderButtonIcon: Icon(
                          Icons.local_shipping_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                        submittedIcon: Icon(Icons.check, color: Colors.white),
                      )
                                         )

                    
                    
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



/* 

class SliderButtonExample extends StatefulWidget {
  const SliderButtonExample({super.key});

  @override
  State<SliderButtonExample> createState() => _SliderButtonExampleState();
}

class _SliderButtonExampleState extends State<SliderButtonExample> {
  double _buttonPosition = 0; // Posición horizontal del botón

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Contenedor de fondo
        Container(
          width: 250,
          height: 60, 
          color: Colors.grey[300], // Color de fondo del slider
        ),
        // Botón con desplazamiento hacia la derecha
        Positioned(
          left: _buttonPosition,
          child: Draggable(
            axis: Axis.horizontal,
            onDragUpdate: (details) {
              setState(() {
                if (details.primaryDelta != null) {
                  _buttonPosition += details.primaryDelta!;
                  // Asegúrate de que el botón no salga del contenedor
                  _buttonPosition = _buttonPosition.clamp(0.0, 20.0); // 250 es el ancho del contenedor menos el ancho del botón
                }
              });
            },
            feedback: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                padding: const EdgeInsets.all(20),
                shape: const CircleBorder(),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
            childWhenDragging: Container(), // Contenedor vacío para que desaparezca
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Color del botón
                padding: const EdgeInsets.all(20),
                shape: const CircleBorder(),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Icon(
                  Icons.arrow_forward_ios, // Cambia a arrow_back_ios si necesitas
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
} */
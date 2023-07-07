import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/constants.dart';
import '../animation/page_transition.dart';
import '../container/custom_shape.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 350,
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   color: Colors.lightGreen.shade400,
            // ),
            child: ClipPath(
              clipper: HalfCircleClipper(),
              child: Container(
                color: darkColor,
                height: MediaQuery.of(context).size.height * 5,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'Hero',
                    child: Image(
                      image: AssetImage(
                        'images/plant_1.png',
                      ),
                    ),
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.ptSans(
                      fontSize: 32,
                      color: darkColor,
                      fontWeight: FontWeight.w800
                    ),
                    child: AnimatedTextKit(
                      pause: Duration(milliseconds: 2000),
                      totalRepeatCount: 1,
                      stopPauseOnTap: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Discover the best plants for your space.',
                          speed: Duration(milliseconds: 150),
                          textAlign: TextAlign.center,
                          curve: Curves.bounceIn,
                        ),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: darkColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.of(context).push(createRoute());
                      },
                      child: Text(
                        'Explore',
                        style: GoogleFonts.ptSans(
                          fontSize: 18,
                          color: Colors.lightGreen.shade50,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/constants.dart';
import 'components/appBar.dart';
import 'components/body_top.dart';
import 'components/grid_view.dart';
import 'components/plant_card.dart';
import 'components/plant_types.dart';
import 'components/promo_code.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  bool isTapped = false;
  late PageController _pageController;
  int initialPage = 1;


  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: .66,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: AnimationLimiter(
          child: Column(
            children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 500),
            childAnimationBuilder: (widget) => SlideAnimation(
            horizontalOffset: 50.0,
            child: FadeInAnimation(
              child: widget,
              ),
            ),
            children:[
              bodyTop(),
              // PromoCode(),
              // PlantTypes(),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Trending Now',
                  style: GoogleFonts.ptSans(
                      color: darkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: AspectRatio(
                  aspectRatio: 1.25,
                  child: PageView.builder(
                      onPageChanged: (value){
                        setState(() {
                          initialPage = value;
                        });
                      },
                      controller: _pageController,
                      physics: ClampingScrollPhysics(),
                      itemCount: 8,
                      scrollBehavior: ScrollBehavior(),
                      itemBuilder: (context, index) => buildMovieCard(index)
                  ),
                ),
              ),
              titleMore('Most Viewed'),
              GridViewBuilder(
                isTapped: isTapped,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
      ),
        ),
      ),
    );
  }

  Widget buildMovieCard(int index) => AnimatedBuilder(
    animation: _pageController,
    builder: (context, child) {
      double value = 0;
      if (_pageController.position.haveDimensions) {
        value = index - _pageController.page!;
        value = (value ).clamp(-1, 1);
      }
      double scale = 1 - (value.abs() * 0.5); // Adjust the scale factor as desired

      return AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: initialPage == index ? 1 : 0.25,
        child: Transform.scale(
          scale: scale,
          child: Transform.rotate(
              angle: pi * value/18,
              child: PlantCard(index: index,),
          ),
        ),
      );
    },
  );

  Padding titleMore(String title) {
    return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.ptSans(
                    color: darkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      isTapped = !isTapped;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isTapped ? Colors.transparent : darkColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: isTapped ?
                        Icon(
                          Icons.close,
                          color: darkColor,
                          size: 20,
                        )
                        : Text(
                      'More',
                      style: GoogleFonts.ptSans(
                          color: bgColor,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}



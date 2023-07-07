
import 'package:animations/animations.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screen/landing_screen/landing_screen.dart';
import 'package:plant_app/screen/profile_screen.dart';

import 'cart_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
    LandingScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: PageTransitionSwitcher(
        transitionBuilder: (
            child,
            primaryAnimation,
            secondaryAnimation,
            ) => FadeThroughTransition(
          fillColor: bgColor,
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: pageList[pageIndex],
      ),
      bottomNavigationBar: FluidNavBar(
        scaleFactor: 2,
        icons: [
          FluidNavBarIcon(icon: Icons.home_filled),
          FluidNavBarIcon(icon: Icons.shopping_cart),
          FluidNavBarIcon(icon: Icons.person),
        ],
        onChange: (value){
            print(value);
            setState(() {
              pageIndex = value;
            });
          },
        style: FluidNavBarStyle(
            barBackgroundColor: darkColor,
            iconBackgroundColor: darkColor,
            iconSelectedForegroundColor: bgCol,
            iconUnselectedForegroundColor: Colors.white
        ),
      )
      // Container(
      //   margin: EdgeInsets.all(8),
      //   decoration: BoxDecoration(
      //     color: darkColor,
      //     boxShadow: [
      //       BoxShadow(
      //         color: darkColor.withOpacity(0.8),
      //         blurRadius: 20,
      //         offset: Offset(0, -2),
      //       ),
      //     ],
      //     borderRadius: BorderRadius.circular(48),
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: GNav(
      //       selectedIndex: pageIndex,
      //       onTabChange: (value){
      //         print(value);
      //         setState(() {
      //           pageIndex = value;
      //         });
      //       },
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       backgroundColor: Colors.transparent,
      //       tabBackgroundColor: bgColor,
      //       color: Colors.white,
      //       activeColor: darkColor,
      //       gap: 8,
      //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      //       tabs: [
      //         GButton(
      //           icon: Icons.home_filled,
      //           text: 'Home',
      //         ),
      //         GButton(
      //           icon: Icons.shopping_cart,
      //           text: 'My Cart',
      //         ),
      //         GButton(
      //           icon: Icons.person,
      //           text: 'My Profile',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
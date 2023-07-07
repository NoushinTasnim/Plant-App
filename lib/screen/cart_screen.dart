import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: darkColor,
        ),
        title: Text(
            'My Cart',
          style: GoogleFonts.ptSans(
            color: darkColor,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: AnimationLimiter(
        child: Stack(
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 500),
            childAnimationBuilder: (widget) => SlideAnimation(
            horizontalOffset: 50.0,
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('images/plant_1.png') ,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Plant Name',
                                  style: GoogleFonts.ptSans(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  'by Ikhtiyar Uddin',
                                  style: GoogleFonts.ptSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                Text(
                                  'Size M',
                                  style: GoogleFonts.ptSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  '\$30',
                                  style: GoogleFonts.ptSans(
                                      fontSize: 20,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                              color: darkColor.withOpacity(0.6),
                                              width: 1.5
                                          )
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        color: darkColor.withOpacity(0.6),
                                        size: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '1',
                                      style: GoogleFonts.ptSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                                color: darkColor.withOpacity(0.6),
                                                width: 1.5
                                            )
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: darkColor.withOpacity(0.6),
                                          size: 20,
                                        ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('images/plant_img_2.png') ,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Plant Name',
                                  style: GoogleFonts.ptSans(
                                      fontSize: 20,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  'by Ikhtiyar Uddin',
                                  style: GoogleFonts.ptSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                Text(
                                  'Size M',
                                  style: GoogleFonts.ptSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  '\$30',
                                  style: GoogleFonts.ptSans(
                                      fontSize: 20,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                              color: darkColor.withOpacity(0.6),
                                              width: 1.5
                                          )
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        color: darkColor.withOpacity(0.6),
                                        size: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '1',
                                      style: GoogleFonts.ptSans(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                              color: darkColor.withOpacity(0.6),
                                              width: 1.5
                                          )
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: darkColor.withOpacity(0.6),
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: darkColor.withOpacity(0.3),
                            blurRadius: 20
                          )
                        ]
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: GoogleFonts.ptSans(
                                fontSize: 24,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '\$58.75',
                            style: GoogleFonts.ptSans(
                                fontSize: 24,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
             top: MediaQuery.of(context).size.height - 200,
             right: 10,
             child: FloatingActionButton(
                onPressed: () {  },
               backgroundColor: darkColor,
                child: Icon(
                    Icons.forward_outlined
                ),
              ),
           ),
          ],
        ),
      ),
      ),
    );
  }
}

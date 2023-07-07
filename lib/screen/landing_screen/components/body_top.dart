import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/screen/landing_screen/components/search_widget.dart';

import '../../../constants.dart';

Stack bodyTop() {
  return Stack(
    children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          bottom: 24,
          top: 2,
          left: 16,
        ),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(150),
            ),
            boxShadow: [
              BoxShadow(
                color: darkColor.withOpacity(0.1),
                blurRadius: 10,
              )
            ]
        ),
        child: Text(
          'Find your \nfavorite plants',
          style: GoogleFonts.ptSans(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              letterSpacing: 1
          ),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 150,
        child: Hero(
          tag: 'Hero',
          child: Image(
              image: AssetImage('images/plant_1.png')
          ),
        ),
      ),
    ],
  );
}
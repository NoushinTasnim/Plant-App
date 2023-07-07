import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/screen/landing_screen/components/search_widget.dart';

import '../../../constants.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: bgColor,
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Text(
      'Plant App',
      style: GoogleFonts.ptSans(
          color: darkColor,
          fontSize: 16,
          fontWeight: FontWeight.bold
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchWidget(),
      ),
    ],
  );
}
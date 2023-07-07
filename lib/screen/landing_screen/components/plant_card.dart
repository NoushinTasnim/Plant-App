import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../details_screen/detaails_screen.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedColor: Colors.transparent,
      openColor: Colors.transparent,
      closedElevation: 0,
      openElevation: 0,
      closedBuilder: (context, action) => Center(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('images/plant_img_${index+2}.png'),
              ),
            ),
            Positioned(
              bottom: 70,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plant Type',
                      style: GoogleFonts.ptSans(
                          color: darkColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),
                    Text(
                      '\$30',
                      style: GoogleFonts.ptSans(
                          color: darkColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      openBuilder: (context, action) => DetailsScreen(string: '${index+2}'),
    );
  }
}
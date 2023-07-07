
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../details_screen/detaails_screen.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    super.key,
    required this.isTapped,
  });

  final bool isTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6),
      width: double.infinity,
      height: isTapped ? 500 : 200,
      child: isTapped ? AnimationLimiter(
        child: MasonryGridView.builder(
            itemCount: 12,
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 500),
                columnCount: 2,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: OpenContainer(
                        closedColor: Colors.transparent,
                        openColor: Colors.transparent,
                        closedElevation: 0,
                        openElevation: 0,
                        closedBuilder: (context, action) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Stack(
                          children: [
                            Image.asset(
                              fit: BoxFit.cover,
                              'images/plant_img_${index + 1}.png',
                            ),
                            Positioned(
                              bottom: 20,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    color: lightColor.withOpacity(0.6)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Plant Name',
                                      style: GoogleFonts.ptSans(
                                          color: darkColor.withOpacity(0.8),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      '\$ 40',
                                      style: GoogleFonts.ptSans(
                                          color: darkColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                        ),
                      openBuilder: (context, action) => DetailsScreen(string: '${index+1}',),
                    ),
                  ),
                ),
              );
            }
        ),
      ):
      AlignedGridView.count(
        itemCount: 3,
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (BuildContext context, int index) {
          return OpenContainer(
              closedColor: Colors.transparent,
              openColor: Colors.transparent,
              closedElevation: 0,
              openElevation: 0,
              closedBuilder: (context, action) =>  Padding(
            padding: const EdgeInsets.all(.0),
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'images/plant_img_${index + 1}.png',
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: lightColor.withOpacity(0.6)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Plant Name',
                              style: GoogleFonts.ptSans(
                                  color: darkColor.withOpacity(0.8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              '\$ 40',
                              style: GoogleFonts.ptSans(
                                  color: darkColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
              ),
            openBuilder: (context, action) => DetailsScreen(string: '${index+1}'),
          );
        }),
    );
  }
}
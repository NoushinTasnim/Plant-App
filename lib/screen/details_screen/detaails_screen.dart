import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.string});
  final String string;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        child: Icon(
          Icons.shopping_cart
        ),
        backgroundColor: darkColor,
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*.8,
              child: Row(
                children: [
                  const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: SafeArea(child: BackButton())),
                            Spacer(),
                            Butttons(icons: Icons.air),
                            Butttons(icons: Icons.wb_sunny_outlined),
                            Butttons(icons: Icons.add_shopping_cart_outlined),
                            Butttons(icons: Icons.shopping_bag_outlined),
                          ],
                    ),
                      ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*.75,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: darkColor.withOpacity(0.5),
                          blurRadius: 48
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(64),
                      ),
                      image: DecorationImage(
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image: AssetImage('images/plant_img_$string.png'),
                      )
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Plant Name',
                    style: GoogleFonts.ptSans(
                        color: darkColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '\$40',
                    style: GoogleFonts.ptSans(
                        color: darkColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width:MediaQuery.of(context).size.width*0.45,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    decoration: BoxDecoration(
                      color: darkColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5,
                          offset: Offset(5,5)
                        ),
                        BoxShadow(
                            color: Colors.white30,
                            blurRadius: 15,
                            offset: Offset(-5,-5)
                        ),
                      ]
                    ),
                    child: Center(
                      child: Text(
                          'Add To Cart',
                        style: GoogleFonts.ptSans(
                          color: Colors.white.withOpacity(.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width:MediaQuery.of(context).size.width*0.45,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                        BoxShadow(
                        color: Colors.black45,
                        blurRadius: 5,
                        offset: Offset(5,5)
                    ),
                    BoxShadow(
                        color: Colors.white30,
                        blurRadius: 5,
                        offset: Offset(-5,-5)
                    ),
                    ]
                    ),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: GoogleFonts.ptSans(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Description',
                style: GoogleFonts.ptSans(
                    color: darkColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Introducing the Fiddle Leaf Fig, a stunning indoor plant that adds a touch of elegance to any space. With its large, glossy leaves and tall stature, this plant is a true statement piece. The Fiddle Leaf Fig is known for its air-purifying qualities, making it not only beautiful but also beneficial for your indoor environment. Its lush green foliage brings a sense of freshness and serenity, creating a calming atmosphere. Whether placed in a living room, office, or bedroom, the Fiddle Leaf Fig is sure to be a conversation starter and a source of natural beauty.',
                style: GoogleFonts.ptSans(
                    color: darkColor,
                    fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Butttons extends StatelessWidget {
  const Butttons({
    super.key,
    required this.icons,
  });

  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03),
        padding: EdgeInsets.all(10),
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: darkColor.withOpacity(0.4),
              blurRadius: 20,
              offset: Offset(13,13)
            ),
            BoxShadow(
                color: Colors.white.withOpacity(.6),
                blurRadius: 15,
                offset: Offset(-10,-8)
            )
          ]
        ),
        child: Icon(
          icons,
          color: darkColor,
        ),
      ),
    );
  }
}

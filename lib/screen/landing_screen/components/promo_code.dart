import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class PromoCode extends StatelessWidget {
  const PromoCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: darkColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(.45),
                          blurRadius: 8,
                          spreadRadius: 0
                      )
                    ]
                ),
                child: Text(
                  'Save 20%',
                  style: GoogleFonts.ptSans(
                      color: darkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Use Promo Code:',
                    style: GoogleFonts.ptSans(
                        color: bgColor,
                        fontSize: 14
                    ),
                  ),
                  Text(
                    'HAPPYHOUR20',
                    style: GoogleFonts.ptSans(
                        color: bgColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        letterSpacing: 1
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '* Terms & Conditions Applicable',
            style: GoogleFonts.ptSans(
              color: bgColor,
              fontWeight: FontWeight.w300,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
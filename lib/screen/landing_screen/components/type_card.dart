import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class TypeCard extends StatelessWidget {
  const TypeCard({
    super.key,
    required this.selectedType,
    required this.index,
    required this.type,
  });

  final int selectedType;
  final int index;
  final String type;

  @override
  Widget build(BuildContext context) {
    print(type);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: selectedType==index ? darkColor : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: selectedType==index ? Colors.transparent : darkColor
        )
      ),
      child: Text(
        type,
        style: GoogleFonts.ptSansCaption(
            color: selectedType==index ? bgColor : darkColor,
            fontSize: 14,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

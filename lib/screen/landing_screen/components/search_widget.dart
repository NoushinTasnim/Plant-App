import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/constants.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {

  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    return SearchBarAnimation(
      searchBoxWidth: MediaQuery.of(context).size.width*0.6,
      isOriginalAnimation: false,
      buttonBorderColour: Colors.black45,
      onFieldSubmitted: (String value){
        debugPrint('onFieldSubmitted value $value');
      },
      buttonColour: bgColor,
      durationInMilliSeconds: 500,
      buttonElevation: 0,
      buttonShadowColour: Colors.transparent,
      textEditingController: TextEditingController(),
      trailingWidget: Icon(
        Icons.search,
      ),
      secondaryButtonWidget: Icon(
        Icons.close,
        color: darkColor,
      ),
      buttonWidget: Icon(
      Icons.search,
        color: darkColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plant_app/screen/landing_screen/components/type_card.dart';

class PlantTypes extends StatefulWidget {

  @override
  State<PlantTypes> createState() => _PlantTypesState();
}

class _PlantTypesState extends State<PlantTypes> {

  int selectedType = 0;
  List<String> plant_types = [
    'Flowering Plants',
    'Succulents and Cacti',
    'Herbs',
    'Foliage Plants',
    'Tropical Plants',
    'Bonsai Trees',
    'Pine Bonsai'
    'Air Plants',
    'Aquatic Plants'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plant_types.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () async {
            setState(() {
              if(selectedType == index)
                selectedType = -1;
              else
                selectedType = index;
            });
          },
          child: TypeCard(
            selectedType: selectedType,
            type: plant_types[index],
            index: index,
          ),
        ),
      ),
    );
  }
}

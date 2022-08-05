import 'package:flutter/material.dart';
import 'package:plant_shop/screens/homeScreen/components/recomended_item.dart';

class RecomendedPlantItems extends StatelessWidget {
  const RecomendedPlantItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          children: [
            RecomendedItem(name: "Samantha",country: "Russia",image: "image_1",price: "250",),
            RecomendedItem(name: "Angelica",country: "Russia",image: "image_2",price: "440",),
            RecomendedItem(name: "Sample",country: "Russia",image: "image_3",price: "300",),
          ],
        ),
      ),
    );
  }
}





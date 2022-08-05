import 'package:flutter/material.dart';
import 'package:plant_shop/screens/homeScreen/components/featured_item.dart';


class FeaturedPlantItems extends StatelessWidget {
  const FeaturedPlantItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          children: [
            FeaturedItem(image: "bottom_img_1",),
            FeaturedItem(image: "bottom_img_2",),
          ],
        ),
      ),
    );
  }
}

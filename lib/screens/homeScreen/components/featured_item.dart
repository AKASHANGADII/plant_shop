import 'package:flutter/material.dart';


class FeaturedItem extends StatelessWidget {
  String image;
  FeaturedItem({required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 4),
      child: Container(
        height: MediaQuery.of(context).size.height*0.21,
        width: 240,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("assets/images/$image.png"),
              fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
}
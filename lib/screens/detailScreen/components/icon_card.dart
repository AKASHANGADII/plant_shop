import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IconCard extends StatelessWidget {
  String icon;
  IconCard({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.03),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: kBackgroundColour,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Colors.white,offset: Offset(0,-10),blurRadius: 20),
            BoxShadow(color: kPrimaryColour.withOpacity(0.28),offset: Offset(0,10),blurRadius: 30),]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(icon,),
      ),
    );
  }
}
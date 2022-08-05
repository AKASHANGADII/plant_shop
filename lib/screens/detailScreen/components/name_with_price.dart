import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';

class NameWithPrice extends StatelessWidget {
  const NameWithPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,bottom: 30,left: 16,right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "Angelica\n".toUpperCase(),style: TextStyle(fontSize: 26,fontWeight:FontWeight.w600,color: Colors.black)),
                TextSpan(text: "Russia".toUpperCase(),style: TextStyle(fontSize:20,color: kPrimaryColour)),
              ],
            ),
          ),
          Text("\$440",style: TextStyle(fontSize:24,fontWeight: FontWeight.w600,color: kPrimaryColour),),
        ],
      ),
    );
  }
}
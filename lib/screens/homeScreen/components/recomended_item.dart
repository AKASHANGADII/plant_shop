import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
import 'package:plant_shop/screens/detailScreen/detail_screen.dart';

class RecomendedItem extends StatelessWidget {
  String image;
  String name;
  String country;
  String price;
  RecomendedItem({required this.name,required this.country,required this.price,required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15,right: 8,left:8),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(DetailScreen.routeName);
        },
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.28,
              width: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)),
                  image: DecorationImage(
                image: AssetImage("assets/images/$image.png"),
                fit: BoxFit.cover,
              )),
            ),
            Container(
              height: 55,
              width: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),
                color: Colors.white,
                boxShadow: [BoxShadow(color: kPrimaryColour.withOpacity(0.23),blurRadius: 7,offset: Offset(0,10))]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$name\n".toUpperCase(),
                          style: TextStyle(color: Colors.black,fontSize: 17),
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(color: kPrimaryColour,),
                        ),
                      ]
                    ),),
                    Spacer(),
                    Text("\$$price",style: TextStyle(color: kPrimaryColour,fontSize: 14),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

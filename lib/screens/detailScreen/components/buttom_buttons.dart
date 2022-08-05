import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';

class ButtomButtons extends StatelessWidget {
  const ButtomButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.08,
          width: MediaQuery.of(context).size.width*0.5,
          decoration: BoxDecoration(
            color: kPrimaryColour,
            borderRadius: BorderRadius.only(topRight: Radius.circular(25),),
          ),
          child: Center(child: Text("BUY NOW",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 16,color: Colors.white),),),
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.08,
          width: MediaQuery.of(context).size.width*0.5,
          child: Center(
            child: Text("Description",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 17,color:kTextColour),
            ),
          ),),
      ],
    );
  }
}
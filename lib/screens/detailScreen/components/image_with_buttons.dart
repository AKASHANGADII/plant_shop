import 'package:flutter/material.dart';
import 'package:plant_shop/screens/detailScreen/components/icon_card.dart';

import '../../../constants.dart';

class ImageWithButton extends StatelessWidget {
  const ImageWithButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.keyboard_backspace_sharp,size: 30,),
                      ),
                    ),
                  ),
                  Spacer(),
                  IconCard(icon: "assets/icons/sun.svg",),
                  IconCard(icon: "assets/icons/icon_2.svg"),
                  IconCard(icon: "assets/icons/icon_3.svg"),
                  IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            ),
          ),
          Container(
              width: 290,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        color: kPrimaryColour.withOpacity(0.25),
                        blurRadius: 30)
                  ],
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(40)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                  ),),),
        ],
      ),
    );
  }
}

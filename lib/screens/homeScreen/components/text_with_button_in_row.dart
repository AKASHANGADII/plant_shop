import 'package:flutter/material.dart';

import '../../../constants.dart';

class TextWithButtonInRow extends StatelessWidget {
  String mainText;
  String buttonText;
  Function() onPressed;
  double size;
  TextWithButtonInRow(
      {required this.mainText,
      required this.buttonText,
      required this.onPressed
      ,required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  mainText,
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kPrimaryColour.withOpacity(0.28),
                  ),
                  width: size,
                  height: 4,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              decoration: BoxDecoration(
                  color: kPrimaryColour,
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

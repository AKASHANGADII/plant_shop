import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: kPrimaryColour,
            width: double.infinity,
            height: 220,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}

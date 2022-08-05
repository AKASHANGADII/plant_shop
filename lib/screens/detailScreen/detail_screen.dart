import 'package:flutter/material.dart';
import 'package:plant_shop/screens/detailScreen/components/buttom_buttons.dart';
import 'package:plant_shop/screens/detailScreen/components/image_with_buttons.dart';
import 'package:plant_shop/screens/detailScreen/components/name_with_price.dart';

class DetailScreen extends StatelessWidget {
  static const routeName='/detail-screen';
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageWithButton(),
            NameWithPrice(),
            ButtomButtons(),
          ],
        ),
      ),
    );
  }
}





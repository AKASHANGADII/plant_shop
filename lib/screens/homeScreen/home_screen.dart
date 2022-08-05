

import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
import 'package:plant_shop/screens/homeScreen/components/text_with_button_in_row.dart';

import '../../widgets/drawer.dart';
import 'components/featured_plant_items.dart';
import 'components/header_with_search_bar.dart';
import 'components/recomended_plant_items.dart';

class HomeScreen extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColour,
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: MainDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColour,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              HeaderWithSearchBar(),
              TextWithButtonInRow(mainText: "Recomended", buttonText: "More", size:160,onPressed: (){}),
              RecomendedPlantItems(),
              TextWithButtonInRow(mainText: "Featured Plants", buttonText: "More",size:180, onPressed: (){}),
              FeaturedPlantItems()
            ],
          ),
        ),
      ),
    );
  }
}








// ListView(
// scrollDirection: Axis.horizontal,
// children:[
// Container(
// width: 130,
// height: 180,
// color: Colors.pinkAccent,
// ),
// Container(
// width: 130,
// height: 180,
// color: Colors.blueGrey,
// ),
// Container(
// width: 130,
// height: 180,
// color: Colors.black26,
// ),
// ],
// ),

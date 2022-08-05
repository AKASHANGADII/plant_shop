import 'package:flutter/material.dart';
import 'package:plant_shop/screens/detailScreen/detail_screen.dart';
import 'package:plant_shop/screens/homeScreen/home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant shop',
      initialRoute: '/',
      routes: {
        '/':(ctx)=>HomeScreen(),
        DetailScreen.routeName:(ctx)=>DetailScreen(),
      },
    );
  }
}

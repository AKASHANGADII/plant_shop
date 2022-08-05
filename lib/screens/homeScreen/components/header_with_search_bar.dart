import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.15 - 22,
            decoration: BoxDecoration(
              color: kPrimaryColour,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Plant shop",style: TextStyle(color: Colors.white,fontSize:36,fontWeight: FontWeight.w500),),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: kPrimaryColour.withOpacity(0.23),
                        blurRadius: 30,
                        offset: Offset(0, 10))
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 5),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: kPrimaryColour),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        suffixIcon: IconButton(
                          color: kPrimaryColour,
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

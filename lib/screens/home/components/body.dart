import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';
import 'recommand_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithBtn(title: "Recommended", press: () {}),
          RecommandsPlants(),
          TitleWithBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

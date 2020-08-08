import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home/details/details_screen.dart';

class RecommandsPlants extends StatelessWidget {
  const RecommandsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommandPlantCard(
            image: "assets/images/image_1.png",
            title: "ggavy",
            country: "Seoul",
            price: 200,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommandPlantCard(
            image: "assets/images/image_2.png",
            title: "ggavy2",
            country: "Seoul2",
            price: 300,
            press: () {},
          ),
          RecommandPlantCard(
            image: "assets/images/image_3.png",
            title: "ggavy3",
            country: "Seoul3",
            price: 400,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommandPlantCard extends StatelessWidget {
  const RecommandPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.4, // it will cover 40% of our total width
        child: Column(
          children: <Widget>[
            Image.asset(image),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 30),
                      blurRadius: 5,
                      color: kPrimaryColor.withOpacity(0.1),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      '\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

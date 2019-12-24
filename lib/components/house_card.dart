import 'package:flutter/material.dart';
import 'package:flutter_house_scraper/constants/constants.dart';
import 'package:flutter_house_scraper/services/House.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'icon_content.dart';

class HouseCard extends StatelessWidget {
  const HouseCard({@required this.house});

  final House house;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch(house.url),
      child: Container(
        child: HouseDetail(
          house: house,
        ),
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: Color(0xFF1D1E33).withOpacity(0.8),
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}

class HouseDetail extends StatelessWidget {
  const HouseDetail({this.house});

  final House house;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(house.imgUrl??kDefaultHomeImageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconContent(icon: FontAwesomeIcons.houseDamage, text: house.title),
            IconContent(icon: FontAwesomeIcons.dollarSign, text: house.price),
            IconContent(icon: FontAwesomeIcons.road, text: house.address),
            IconContent(icon: FontAwesomeIcons.key, text: house.provider.toLowerCase()),
          ],
        ),
      ],
    );
  }
}

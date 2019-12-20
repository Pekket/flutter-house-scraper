import 'package:flutter/material.dart';
import 'package:flutter_house_scraper/screens/house_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HouseOverview(),
    );
  }
}

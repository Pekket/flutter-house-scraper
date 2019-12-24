import 'package:flutter/material.dart';
import 'package:flutter_house_scraper/screens/house_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.redAccent,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: HouseOverview(),
    );
  }
}

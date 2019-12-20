import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon, size: 20.0,),
          SizedBox(width: 8.0,),
          Text(text??"", style:  TextStyle(
              fontSize: 20.0,
              color: Color(0xFF8D8E98)
          ))
        ],
      ),
    );
  }
}

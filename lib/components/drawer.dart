import 'package:flutter/material.dart';
import 'package:flutter_house_scraper/constants/constants.dart';

class MyDrawer extends StatelessWidget {

  const MyDrawer({@required this.checkedValues, this.checkboxChanged});

  final List<String> checkedValues;
  final Function checkboxChanged;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 30.0),
        children: <Widget>[
          CheckBox(text: 'Zimmo',
            value: checkedValues.contains("zimmo"),
            onChange: checkboxChanged,),
          CheckBox(text: 'Immoscoop',
            value: checkedValues.contains("immoscoop"),
            onChange: checkboxChanged,),
          CheckBox(text: 'Immoweb',
            value: checkedValues.contains("immoweb"),
            onChange: checkboxChanged,),
          CheckBox(text: 'Immovlan',
            value: checkedValues.contains("immovlan"),
            onChange: checkboxChanged,),
          CheckBox(text: 'Tweedehands',
            value: checkedValues.contains("tweedehands"),
            onChange: checkboxChanged,),
        ],
      ),
    );
  }
}

class CheckBox extends StatelessWidget {
  const CheckBox({@required this.text, @required this.value, this.onChange});

  final String text;
  final bool value;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          text,
          style: kDrawerListText,
        ),
        value: value,
        checkColor: Colors.white,
        activeColor: Colors.blueGrey,
        onChanged: (value) {
          onChange(text.toLowerCase());
        }
    );
  }
}


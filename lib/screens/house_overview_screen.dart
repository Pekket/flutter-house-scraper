import 'package:flutter/material.dart';
import 'package:flutter_house_scraper/components/drawer.dart';
import 'package:flutter_house_scraper/components/house_card.dart';
import 'package:flutter_house_scraper/constants/constants.dart';
import 'package:flutter_house_scraper/services/House.dart';
import 'package:flutter_house_scraper/services/networkHelper.dart';

class HouseOverview extends StatefulWidget {
  @override
  _HouseOverviewState createState() => _HouseOverviewState();
}

class _HouseOverviewState extends State<HouseOverview> {
  List<String> selectedHouses;
  List<House> houses = [];

  @override
  void initState() {
    super.initState();
    selectedHouses = kHouseProviders;
    getData();
  }

  Future<void> getData() async {
    NetworkHelper networkHelper =
        NetworkHelper(kHouseUrl + selectedHouses.join(","));
    List jsonResponse = await networkHelper.getData() as List;
    setState(() {
      houses = jsonResponse.map((m) => House.fromJson(m)).toList();
    });
  }

  void onCheckBoxChanged(value) {
    setState(
      () {
        selectedHouses.contains(value)
            ? selectedHouses.remove(value)
            : selectedHouses.add(value);
      },
    );
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Huisjes'),
      ),
      drawer: MyDrawer(
        checkedValues: selectedHouses,
        checkboxChanged: onCheckBoxChanged,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Theme.of(context).accentColor,
        onPressed: () {
          getData();
        },
      ),
      body: Container(
        child: RefreshIndicator(
          onRefresh: () => getData(),
          child: ListView.builder(
            itemCount: houses.length,
            itemBuilder: (BuildContext context, int index) {
              return new HouseCard(
                house: houses[index],
              );
            },
          ),
        ),
      ),
    );
  }
}

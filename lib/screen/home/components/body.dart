import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant_model.dart';

import 'header_home_tab.dart';
import 'plant_card.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'Top Picks',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        HeaderHomeTab(tabController: _tabController),
        SizedBox(height: 20.0),
        Container(
          height: 500.0,
          width: double.infinity,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _selectedPage = index;
              });
            },
            itemCount: plants.length,
            itemBuilder: (BuildContext context, int index) => PlantCard(
              itemsIndex: index,
              press: () {},
              plant: plants[index],
              pageController: _pageController,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                plants[_selectedPage].description,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

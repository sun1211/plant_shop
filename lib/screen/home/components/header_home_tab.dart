import 'package:flutter/material.dart';

class HeaderHomeTab extends StatelessWidget {
  const HeaderHomeTab({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.transparent,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey.withOpacity(0.6),
      labelPadding: EdgeInsets.symmetric(horizontal: 30.0),
      isScrollable: true,
      tabs: <Widget>[
        Tab(
          child: Text(
            'Top',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Outdoor',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Indoor',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Tab(
          child: Text(
            'New Arrivals',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Limited Edition',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

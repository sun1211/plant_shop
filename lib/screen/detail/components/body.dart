import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant_model.dart';

import 'header_detail.dart';
import 'information.dart';

class Body extends StatelessWidget {
  final Plant plant;
  const Body({Key key, this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderDetail(plant: plant),
          Information(plant: plant),
        ],
      ),
    );
  }
}

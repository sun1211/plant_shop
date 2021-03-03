import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant_model.dart';
import 'package:plant_shop/screen/detail/components/app_bar.dart';
import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  final Plant plant;
  const DetailScreen({Key key, this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: DetailAppBar(context),
      body: Body(
        plant: plant,
      ),
    );
  }
}

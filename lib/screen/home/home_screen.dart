import 'package:flutter/material.dart';
import 'package:plant_shop/screen/home/components/app_bar.dart';
import 'package:plant_shop/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppBar(context),
      body: Body(),
    );
  }
}

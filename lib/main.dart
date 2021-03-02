import 'package:flutter/material.dart';
import 'package:plant_shop/screen/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Shop App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

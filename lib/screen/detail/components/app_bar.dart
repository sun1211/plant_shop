import 'package:flutter/material.dart';

AppBar DetailAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        size: 30.0,
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.shopping_cart,
          size: 30.0,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}

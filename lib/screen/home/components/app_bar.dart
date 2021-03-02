import 'package:flutter/material.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        size: 30.0,
        color: Colors.grey,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.shopping_cart,
          size: 30.0,
          color: Colors.black87,
        ),
        onPressed: () {},
      ),
    ],
  );
}

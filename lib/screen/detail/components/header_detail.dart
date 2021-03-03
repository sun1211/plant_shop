import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
import 'package:plant_shop/models/plant_model.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    Key key,
    @required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 30.0,
            right: 30.0,
          ),
          height: 520.0,
          width: double.infinity,
          color: kPrimaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text(
                plant.category.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                plant.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                'FROM',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '\$${plant.price}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                'SIZE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                plant.size,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
              RawMaterialButton(
                padding: EdgeInsets.all(20.0),
                shape: CircleBorder(),
                elevation: 2.0,
                fillColor: Colors.black,
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                  size: 25.0,
                ),
                onPressed: () => print('Add to cart'),
              ),
            ],
          ),
        ),
        Positioned(
          right: 20.0,
          bottom: 30.0,
          child: Hero(
            tag: plant.imageUrl,
            child: Image(
              height: 280.0,
              width: 280.0,
              image: AssetImage(plant.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

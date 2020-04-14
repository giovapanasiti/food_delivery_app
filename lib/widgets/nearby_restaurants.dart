import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/screens/restaurant_screen.dart';
import 'package:flutter_food_delivery_ui/widgets/restaurant_row.dart';

import '../data/data.dart';
import '../models/restaurant.dart';

class NearbyRestaurants extends StatelessWidget {
  _buildRestaurants(BuildContext context) {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => RestaurantScreen(restaurant: restaurant))),
          child: RestaurantRow(restaurant)));
    });
    return Column(
      children: restaurantList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Nearby Restaurants',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
                letterSpacing: 1.2),
          ),
        ),
        _buildRestaurants(context)
      ],
    );
  }
}

class RatingStart {}

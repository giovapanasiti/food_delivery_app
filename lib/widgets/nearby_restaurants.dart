import 'package:flutter/material.dart';

import '../data/data.dart';
import '../data/data.dart';
import '../data/data.dart';
import '../data/data.dart';
import '../data/data.dart';
import '../models/restaurant.dart';
import 'rating_stars.dart';

class NearbyRestaurants extends StatelessWidget {
  _buildRestaurants() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              border: Border.all(width: 1.0, color: Colors.grey[200])),
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                    image: AssetImage(restaurant.imageUrl)),
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      restaurant.name,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    RatingStars(restaurant.rating),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      restaurant.address,
                      style: TextStyle(
                          fontSize: 13.0, fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      '0.2 miles away',
                      style: TextStyle(
                          fontSize: 13.0, fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
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
        _buildRestaurants()
      ],
    );
  }
}

class RatingStart {
}

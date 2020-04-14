import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'rating_stars.dart';

class RestaurantRow extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantRow(this.restaurant);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          border: Border.all(width: 1.0, color: Colors.grey[200])),
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Hero(
              //wrapping both images in the hero widget and giving both of them the same tag will make it animate
              tag: restaurant.imageUrl, //we need a unique id to animate it
              child: Image(
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                  image: AssetImage(restaurant.imageUrl)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  restaurant.name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  '0.2 miles away',
                  style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

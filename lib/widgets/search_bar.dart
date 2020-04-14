import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                    width: 0.9, color: Theme.of(context).primaryColor)),
            prefixIcon: Icon(Icons.search, size: 30.0),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {},
            ),
            hintText: 'Search Food or restaurant',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(width: 0.9))),
      ),
    );
  }
}

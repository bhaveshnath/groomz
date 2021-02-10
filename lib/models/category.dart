import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Category {
  String name;
  String image;
  Color color;

  Category({this.color, this.image, this.name});
}

List<Category> categories = [
  Category(name: "Salon", image: "assets/icons/salon.svg", color: Colors.teal),
  Category(
      name: "Hairstyle",
      image: "assets/icons/scissors.svg",
      color: Colors.orange),
  Category(
      name: "Shampoo", image: "assets/icons/salon.svg", color: Colors.pink),
  Category(
      name: "Haircut", image: "assets/icons/salon.svg", color: Colors.amber),
  Category(
      name: "Styling", image: "assets/icons/scissors.svg", color: Colors.blue),
  Category(
      name: "Haircut",
      image: "assets/icons/filter.svg",
      color: Colors.deepPurple),
];

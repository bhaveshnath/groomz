import 'package:flutter/material.dart';

import '../constants.dart';

class BarberCircularavatar extends StatelessWidget {
  final String image;
  final double radius;
  const BarberCircularavatar({
    Key key,
    this.image,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: TextIconcolor,
      backgroundImage: NetworkImage(image, scale: 30),
      radius: radius,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: TextIconcolor, width: 1.75)),
      ),
    );
  }
}

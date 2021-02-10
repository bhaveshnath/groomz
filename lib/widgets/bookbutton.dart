import 'package:flutter/material.dart';
import 'package:groomz/constants.dart';

class BookButton extends StatelessWidget {
  final String name;
  const BookButton({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(16)),
            color: TextIconcolor),
        child: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

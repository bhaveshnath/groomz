import 'package:flutter/material.dart';
import 'package:groomz/constants.dart';

class DefaultButton extends StatelessWidget {
  final String name;
  final Function pressed;
  const DefaultButton({
    Key key,
    this.name,
    this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: pressed,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: TextIconcolor, borderRadius: BorderRadius.circular(30)),
          child: Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/models/barbers.dart';
import 'package:groomz/widgets/circularavatar.dart';

import '../../../constants.dart';

class BarbersList extends StatelessWidget {
  const BarbersList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: double.infinity,
      child: ListView.builder(
          itemCount: barbers.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, i) {
            return Container(
              margin: EdgeInsets.only(right: kpadding),
              child: Column(
                children: [
                  BarberCircularavatar(
                    image: barbers[i].image,
                    radius: 40,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    barbers[i].name,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Hair Stylist",
                      style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(color: TextIconcolor, fontSize: 14)))
                ],
              ),
            );
          }),
    );
  }
}

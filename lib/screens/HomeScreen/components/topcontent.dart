import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/constants.dart';

class Topcontent extends StatelessWidget {
  const Topcontent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(color: kPrimaryColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Your location",
              style: TextStyle(color: Colors.white60),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/location.svg",
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "San Francisco City",
                      style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 18)),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kSecondaryColor1,
                  borderRadius: BorderRadius.circular(14)),
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white54,
                    ),
                    hintText: "Search salon spa & barber services.. ",
                    hintStyle: TextStyle(color: kTextColor),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: kpadding, vertical: 5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

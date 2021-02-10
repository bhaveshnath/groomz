import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/models/barbers.dart';
import 'package:groomz/widgets/defaultbutton.dart';
import 'package:readmore/readmore.dart';

import '../../../constants.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: GoogleFonts.montserrat(textStyle: headtextstyle),
          ),
          SizedBox(
            height: 15,
          ),
          ReadMoreText(
            "A beauty salon is an establishment that offers a variety of cosmetic treatments and cosmetic services for men and women. Beauty salons may offer a variety of services including professional hair cutting and styling, manicures and pedicures, and often cosmetics, makeup and makeovers.",
            colorClickableText: TextIconcolor,
            style: TextStyle(color: kTextColor),
            trimLines: 4,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            trimExpandedText: 'show less',
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Opening Hours",
            style: GoogleFonts.montserrat(textStyle: headtextstyle),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Monday-Friday",
                style: TextStyle(color: kTextColor),
              ),
              Text(
                "8:30 AM-9:00 PM",
                style: TextStyle(color: TextIconcolor),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Saturday-Sunday",
                style: TextStyle(color: kTextColor),
              ),
              Text(
                "9:00 AM-1:00 PM",
                style: TextStyle(color: TextIconcolor),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Address",
            style: GoogleFonts.montserrat(textStyle: headtextstyle),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Panchseel nagar 2 , lm road ,\nshivaji nagar,near Ankur Building , Borivali west ",
            style: TextStyle(color: kTextColor),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/direct.svg",
                width: 15,
                color: TextIconcolor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Get direction - 4.2km",
                style: TextStyle(color: TextIconcolor),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Photos",
                style: GoogleFonts.montserrat(textStyle: headtextstyle),
              ),
              Text(
                'View all',
                style: TextStyle(color: TextIconcolor),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
                itemCount: barbers.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (Context, i) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        barbers[i].image,
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 30,
          ),
          DefaultButton(
            name: "Book now",
            pressed: () {},
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class DetailIcon extends StatelessWidget {
  final Icon icon;
  final String name;
  const DetailIcon({
    Key key,
    this.icon,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        width: 100,
        child: Column(
          children: [
            IconButton(icon: icon, color: TextIconcolor, onPressed: null),
            Text(
              name,
              style: TextStyle(color: TextIconcolor),
            )
          ],
        ),
      ),
    );
  }
}

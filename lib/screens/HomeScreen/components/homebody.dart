import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/Controller/salon_controller.dart';
import 'package:groomz/constants.dart';

import 'package:groomz/models/category.dart';
import 'package:groomz/models/salon.dart';
import 'package:groomz/screens/HomeScreen/components/bestsalon.dart';
import 'package:groomz/widgets/bookbutton.dart';
import 'package:groomz/screens/HomeScreen/components/topcontent.dart';
import 'package:groomz/widgets/carousel.dart';

import 'allsalon.dart';
import 'topcategories.dart';

class Homebody extends StatelessWidget {
  final controller = Get.put(SalonController());
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemoverlay);

    return Scaffold(
      backgroundColor: kSecondaryColor1,
      appBar: buildAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Topcontent(),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kpadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top services",
                        style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    Text(
                      "View All",
                      style: TextStyle(color: TextIconcolor, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TopCategories(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kpadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending Salons",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  Text(
                    "View All",
                    style: TextStyle(color: TextIconcolor, fontSize: 16),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Bestsalon(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kpadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special package & offers",
                    style: GoogleFonts.montserrat(textStyle: headtextstyle),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: TextIconcolor, fontSize: 16),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Carousel(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kpadding),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Best Salons",
                  style: GoogleFonts.montserrat(textStyle: headtextstyle),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            AllSalon()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/models/barbers.dart';
import 'package:groomz/screens/HomeScreen/components/allsalon.dart';
import 'package:groomz/screens/SalonDetails/components/barberslist.dart';

import 'package:groomz/widgets/carousel.dart';
import 'package:groomz/models/services.dart';
import 'package:groomz/screens/HomeScreen/components/bestsalon.dart';
import 'package:groomz/widgets/bookbutton.dart';
import 'package:groomz/screens/HomeScreen/components/topcontent.dart';
import 'package:groomz/widgets/circularavatar.dart';

class Nearby extends StatefulWidget {
  @override
  _NearbyState createState() => _NearbyState();
}

class _NearbyState extends State<Nearby> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor1,
      appBar: buildAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Topcontent(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              padding: EdgeInsets.only(left: kpadding),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: services.length,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: kpadding),
                      child: Text(
                        services[index].name,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 16,
                                color: selectedindex == index
                                    ? Colors.white
                                    : TextIconcolor)),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: kpadding),
              height: 130,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: barbers.length,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Container(
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.only(right: kpadding),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          BarberCircularavatar(
                            image: barbers[i].image,
                            radius: 40,
                          ),
                          barbers[i].featured == true
                              ? Positioned(
                                  top: 71,
                                  child: FlatButton(
                                      onPressed: null,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: TextIconcolor,
                                        ),
                                        child: Text(
                                          "Featured",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                )
                              : SizedBox(),
                          Positioned(
                            top: 110,
                            child: Text(
                              barbers[i].name,
                              style: TextStyle(color: kTextColor),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kpadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular salon nearby",
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
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
            AllSalon(),
          ],
        ),
      ),
    );
  }
}

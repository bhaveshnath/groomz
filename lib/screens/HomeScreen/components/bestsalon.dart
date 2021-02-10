import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/models/salon.dart';
import 'package:groomz/screens/SalonDetails/salon_details.dart';
import 'package:groomz/widgets/bookbutton.dart';

class Bestsalon extends StatelessWidget {
  const Bestsalon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: kpadding),
      height: 216,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: salons.length,
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, i) {
            return SalonCard(
              salon: salons[i],
            );
          }),
    );
  }
}

class SalonCard extends StatelessWidget {
  final Salon salon;
  const SalonCard({
    Key key,
    this.salon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SalonDetail(
                      salon: salon,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(right: 5),
        height: 150,
        width: 280,
        decoration: BoxDecoration(),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                child: Image.network(
                  salon.image,
                  fit: BoxFit.fill,
                  height: 120,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kpadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      salon.name,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/star.svg",
                          width: 20,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(salon.rating.toString())
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(salon.address),
              ),
              BookButton(
                name: "Book",
              )
            ],
          ),
        ),
      ),
    );
  }
}

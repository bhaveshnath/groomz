import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/Controller/salon_controller.dart';
import 'package:groomz/models/salon.dart';
import 'package:groomz/screens/SalonDetails/salon_details.dart';
import 'package:groomz/widgets/bookbutton.dart';

import '../../../constants.dart';

class AllSalon extends StatelessWidget {
  const AllSalon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kpadding),
        child: GetX<SalonController>(builder: (controller) {
          return ListView.builder(
              itemCount: controller.salonList.length,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SalonDetail(
                                  salon: controller.salonList[index],
                                )));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 251,
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            child: Image.network(
                              controller.salonList[index].image,
                              fit: BoxFit.fill,
                              width: double.infinity,
                              height: 150,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kpadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.salonList[index].name,
                                  style: GoogleFonts.montserrat(
                                      textStyle: salonname),
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
                                    Text(controller.salonList[index].rating
                                        .toString())
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
                            child: Text(controller.salonList[index].address),
                          ),
                          BookButton(
                            name: "Book",
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }));
  }
}

class AllSalonCard extends StatelessWidget {
  final Salon salon;
  const AllSalonCard({
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
        margin: EdgeInsets.only(bottom: 10),
        height: 251,
        width: double.infinity,
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
                  width: double.infinity,
                  height: 150,
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
                      style: GoogleFonts.montserrat(textStyle: salonname),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

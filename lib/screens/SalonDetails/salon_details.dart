import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/models/barbers.dart';
import 'package:groomz/models/salon.dart';
import 'package:groomz/screens/SalonDetails/components/Gallery/gallery.dart';
import 'package:groomz/screens/SalonDetails/components/barberslist.dart';
import 'package:groomz/screens/SalonDetails/components/ServiceTab/services.dart';
import 'package:groomz/screens/SalonDetails/components/reviews/reviews.dart';
import 'package:groomz/widgets/circularavatar.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'components/aboutcontent.dart';

class SalonDetail extends StatefulWidget {
  final Salon salon;

  const SalonDetail({Key key, this.salon}) : super(key: key);
  @override
  _SalonDetailState createState() => _SalonDetailState();
}

class _SalonDetailState extends State<SalonDetail> {
  @override
  void initState() {
    super.initState();
  }

  List<Widget> contentpage = [
    AboutContent(),
    SalonServices(),
    Gallery(),
    Reviews()
  ];

  var selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      dragStartBehavior: DragStartBehavior.start,
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          brightness: Brightness.light,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                  widget.salon.image,
                ),
                fit: BoxFit.fill,
              )),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(kpadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.salon.name,
                        style: headtextstyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.salon.address,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmoothStarRating(
                            isReadOnly: true,
                            rating: widget.salon.rating,
                            color: TextIconcolor,
                            starCount: 5,
                            size: 20,
                            borderColor: Colors.white,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.green[700])),
                            child: Text(
                              "Open",
                              style: TextStyle(color: Colors.green[700]),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0.1),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              ),
            ),
          ),
        ),
        SliverFillRemaining(
          child: buildContent(),
        )
      ],
    );
  }

  Widget buildContent() {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kSecondaryColor1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                      height: 100,
                      width: double.infinity,
                      color: kPrimaryColor,
                      child: Row(
                        children: [
                          DetailIcon(
                            icon: Icon(
                              Icons.public,
                              color: TextIconcolor,
                              size: 25,
                            ),
                            name: "Website",
                          ),
                          DetailIcon(
                            icon: Icon(
                              Icons.phone,
                              size: 25,
                              color: TextIconcolor,
                            ),
                            name: "Call",
                          ),
                          DetailIcon(
                            icon: Icon(
                              Icons.directions,
                              size: 25,
                              color: TextIconcolor,
                            ),
                            name: "Direction",
                          ),
                          DetailIcon(
                            icon: Icon(
                              Icons.share,
                              size: 25,
                              color: TextIconcolor,
                            ),
                            name: "Share",
                          ),
                        ],
                      )),
                ],
              ),
              Container(
                height: 250,
                width: double.infinity,
                color: kPrimaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: kpadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Salon specialist",
                        style: GoogleFonts.montserrat(textStyle: headtextstyle),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BarbersList(),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: kpadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              salonoption.length,
                              (index) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedindex = index;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Text(
                                          salonoption[index],
                                          style: TextStyle(
                                              color: selectedindex == index
                                                  ? TextIconcolor
                                                  : kTextColor,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        selectedindex == index
                                            ? Container(
                                                width: 80,
                                                height: 2,
                                                color: TextIconcolor,
                                              )
                                            : SizedBox()
                                      ],
                                    ),
                                  )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kpadding),
                  child: contentpage[selectedindex],
                ),
              )
            ],
          ),
        ));
  }
}

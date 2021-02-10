import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/models/carousel.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: slider.length,
        itemBuilder: (BuildContext context, i) {
          return Container(
            decoration: BoxDecoration(),
            padding: EdgeInsets.symmetric(horizontal: kpadding),
            child: Image.network(
              slider[i].image,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          );
        },
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          scrollDirection: Axis.horizontal,
        ));
  }
}

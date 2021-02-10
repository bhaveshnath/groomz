import 'package:flutter/material.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/models/offers.dart';
import 'package:groomz/models/salon.dart';

class PackagesOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: offers.length,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  offers[index].image,
                  width: double.infinity,
                  height: 140,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    offers[index].name,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Book now",
                    style: TextStyle(color: TextIconcolor, fontSize: 18),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    offers[index].discription,
                    style: TextStyle(color: kTextColor),
                  ),
                  Text(
                    offers[index].price.toString(),
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        );
      },
    );
  }
}
